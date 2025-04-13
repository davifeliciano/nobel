#!/bin/bash

CONCURRENT_REQUESTS=10
ITERATIONS=20
MAX_LAUREATE_ID=300
BASE_URL="http://localhost"
LOG_FILE="stress_test_$(date --iso-8601=seconds).log"

trap "echo 'Stress test interrupted. Cleaning up...'; kill 0; exit 1" SIGINT

while getopts c:i: flag; do
  case "${flag}" in
    c) CONCURRENT_REQUESTS=${OPTARG} ;;
    i) ITERATIONS=${OPTARG} ;;
    *) echo "Usage: $0 [-c CONCURRENT_REQUESTS] [-i ITERATIONS]" ; exit 1 ;;
  esac
done

if ! curl -s -o /dev/null "$BASE_URL/health"; then
  echo "Error: Unable to reach API at $BASE_URL. Check if the server is up and listening."
  exit 1
fi

test_physics() {
  for ((i=1; i<=ITERATIONS; i++)); do
    curl -s --max-time 5 -o /dev/null -w "GET /laureates/physics: %{http_code}\n" "$BASE_URL/laureates/physics" ||
      echo "Error: Unable to connect to $BASE_URL/laureates/physics" >> $LOG_FILE &
  done
}

test_physics_by_id() {
  for ((i=1; i<=ITERATIONS; i++)); do
    ID=$((RANDOM % MAX_LAUREATE_ID + 1))
    curl -s --max-time 5 -o /dev/null -w "GET /laureates/physics/$ID: %{http_code}\n" "$BASE_URL/laureates/physics/$ID" ||
      echo "Error: Unable to connect to $BASE_URL/laureates/physics/$ID" >> $LOG_FILE &
  done
}

echo "Starting stress test with $CONCURRENT_REQUESTS concurrent requests and $ITERATIONS iterations per endpoint..."

for ((j=1; j<=CONCURRENT_REQUESTS; j++)); do
  test_physics
  test_physics_by_id
done

wait
echo "Stress test completed."
echo "Error log written at $LOG_FILE file"