import os
import requests
import psycopg2
from urllib.parse import urlparse

DATABASE_URL = os.getenv("DATABASE_URL")

if not DATABASE_URL:
    raise ValueError("DATABASE_URL environment variable is not set")

parsed_url = urlparse(DATABASE_URL)

DB_CONFIG = {
    "dbname": parsed_url.path[1:],  # Remove leading '/' from path
    "user": parsed_url.username,
    "password": parsed_url.password,
    "host": parsed_url.hostname,
    "port": parsed_url.port
}

def normalize_date(date_str):
    if not date_str:
        return None

    parts = date_str.split("-")
    year = parts[0]
    month = parts[1] if len(parts) > 1 and parts[1] != "00" else "01"
    day = parts[2] if len(parts) > 2 and parts[2] != "00" else "01"
    return f"{year}-{month}-{day}"

def fetch_nobel_laureates():
    url = "https://api.nobelprize.org/2.1/laureates?nobelPrizeCategory=phy&limit=10000"
    response = requests.get(url)
    response.raise_for_status()  # Raise an error for bad status codes
    data = response.json()
    laureates = []

    for laureate in data.get("laureates", []):
        full_name = laureate.get("fullName", {}).get("en")
        birth_date = normalize_date(laureate.get("birth", {}).get("date"))
        birth_city = laureate.get("birth", {}).get("place", {}).get("city", {}).get("en")
        birth_country = laureate.get("birth", {}).get("place", {}).get("country", {}).get("en")
        death_date = normalize_date(laureate.get("death", {}).get("date"))
        death_city = laureate.get("death", {}).get("place", {}).get("city", {}).get("en")
        death_country = laureate.get("death", {}).get("place", {}).get("country", {}).get("en")

        laureates.append((full_name, birth_date, birth_city, birth_country, death_date, death_city, death_country))

    return laureates

def insert_into_database(laureates):
    connection = None

    try:
        connection = psycopg2.connect(**DB_CONFIG)
        cursor = connection.cursor()

        cursor.execute("""
            CREATE TABLE IF NOT EXISTS physics_nobel_laureates (
                id SERIAL PRIMARY KEY,
                full_name TEXT,
                birth_date TEXT,
                birth_city TEXT,
                birth_country TEXT,
                death_date TEXT,
                death_city TEXT,
                death_country TEXT
            );
        """)

        insert_query = """
            INSERT INTO physics_nobel_laureates (
                full_name, birth_date, birth_city, birth_country, death_date, death_city, death_country
            ) VALUES (%s, %s, %s, %s, %s, %s, %s);
        """
        cursor.executemany(insert_query, laureates)
        connection.commit()

        print(f"Inserted {len(laureates)} laureates into the database.")

    except Exception as e:
        print(f"An error occurred: {e}")

    finally:
        if connection:
            connection.close()

if __name__ == "__main__":
    laureates = fetch_nobel_laureates()
    insert_into_database(laureates)