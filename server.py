import json
import os
from flask import Flask, Response, jsonify, abort, request
import psycopg2
from urllib.parse import urlparse
from valkey import Valkey
from prometheus_client import Counter, Gauge, Histogram, generate_latest

DATABASE_URL = os.getenv("DATABASE_URL")
if not DATABASE_URL:
    raise ValueError("DATABASE_URL environment variable is not set")

parsed_url = urlparse(DATABASE_URL)
DB_CONFIG = {
    "dbname": parsed_url.path[1:],  # Remove leading '/' from path
    "user": parsed_url.username,
    "password": parsed_url.password,
    "host": parsed_url.hostname,
    "port": parsed_url.port,
}

VALKEY_HOST = os.getenv("VALKEY_HOST", "localhost")
VALKEY_PORT = int(os.getenv("VALKEY_PORT", 6379))
VALKEY_DB = int(os.getenv("VALKEY_DB", 0))

INPROGRESS_REQUESTS = Gauge(
    "inprogress_requests", "In Progress Requests", ["method", "endpoint"]
)
REQUEST_COUNT = Counter("request_count", "Total Requests", ["method", "endpoint"])
ERROR_COUNT = Counter(
    "error_count", "Total API Errors", ["method", "endpoint", "status"]
)
RESPONSE_LATENCY = Histogram(
    "response_latency", "Response Latency", labelnames=["method", "endpoint"]
)

app = Flask(__name__)
cache = Valkey(host=VALKEY_HOST, port=VALKEY_PORT, db=VALKEY_DB)


def map_row_to_dict(row):
    return {
        "id": row[0],
        "full_name": row[1],
        "birth_date": row[2],
        "birth_city": row[3],
        "birth_country": row[4],
        "death_date": row[5],
        "death_city": row[6],
        "death_country": row[7],
    }


def fetch_physics_laureates():
    connection = None

    try:
        connection = psycopg2.connect(**DB_CONFIG)
        cursor = connection.cursor()

        cursor.execute(
            """
            SELECT
                id,
                full_name,
                birth_date,
                birth_city,
                birth_country,
                death_date,
                death_city,
                death_country
            FROM physics_nobel_laureates;
        """
        )

        rows = cursor.fetchall()
        laureates = [map_row_to_dict(row) for row in rows]
        return laureates

    except Exception as e:
        print(f"An error occurred: {e}")
        return []
    finally:
        if connection:
            connection.close()


def fetch_physics_laureate_by_id(laureate_id):
    connection = None

    try:
        connection = psycopg2.connect(**DB_CONFIG)
        cursor = connection.cursor()

        cursor.execute(
            """
            SELECT
                id,
                full_name,
                birth_date,
                birth_city,
                birth_country,
                death_date,
                death_city,
                death_country
            FROM physics_nobel_laureates
            WHERE id = %s;
        """,
            (laureate_id,),
        )

        row = cursor.fetchone()
        return map_row_to_dict(row) if row else None

    except Exception as e:
        print(f"An error occurred: {e}")
        return None
    finally:
        if connection:
            connection.close()


@app.before_request
def before_request():
    REQUEST_COUNT.labels(method=request.method, endpoint=request.path).inc()
    INPROGRESS_REQUESTS.labels(method=request.method, endpoint=request.path).inc()


@app.after_request
def after_request(response):
    INPROGRESS_REQUESTS.labels(method=request.method, endpoint=request.path).dec()
    return response


@app.errorhandler(404)
def not_found(error):
    ERROR_COUNT.labels(method=request.method, endpoint=request.path, status=404).inc()
    return jsonify({"error": "Not found"}), 404


@app.errorhandler(Exception)
def handle_exception(error):
    ERROR_COUNT.labels(method=request.method, endpoint=request.path, status=500).inc()
    return jsonify({"error": str(error)}), 500


@app.route("/metrics", methods=["GET"])
def metrics():
    return Response(generate_latest(), mimetype="text/plain")


@app.route("/laureates/physics", methods=["GET"])
def get_physics_laureates():
    with RESPONSE_LATENCY.labels(method=request.method, endpoint=request.path).time():
        laureates = fetch_physics_laureates()
        return jsonify(laureates)


@app.route("/laureates/physics/<int:laureate_id>", methods=["GET"])
def get_physics_laureate_by_id(laureate_id):
    with RESPONSE_LATENCY.labels(method=request.method, endpoint=request.path).time():
        cache_key = f"physics_laureate_{laureate_id}"
        cached_result = cache.get(cache_key)

        if cached_result:
            return jsonify(json.loads(cached_result))

        laureate = fetch_physics_laureate_by_id(laureate_id)

        if not laureate:
            abort(404, description="Laureate not found")

        cache.set(cache_key, json.dumps(laureate))
        return jsonify(laureate)


if __name__ == "__main__":
    app.run(debug=True)
