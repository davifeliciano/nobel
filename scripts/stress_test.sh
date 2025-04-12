#!/bin/bash

CONCURRENT_REQUESTS=10
ITERATIONS=50
MAX_LAUREATE_ID=300

trap "echo 'Stress test interrupted. Exiting...'; exit 1" SIGINT

while getopts c:i: flag; do
  case "${flag}" in
    c) CONCURRENT_REQUESTS=${OPTARG} ;;
    i) ITERATIONS=${OPTARG} ;;
    *) echo "Usage: $0 [-c CONCURRENT_REQUESTS] [-i ITERATIONS]" ; exit 1 ;;
  esac
done

BASE_URL="http://localhost"

test_physics() {
  for ((i=1; i<=ITERATIONS; i++)); do
    curl -s -o /dev/null -w "GET /laureates/physics: %{http_code}\n" "$BASE_URL/laureates/physics" &
  done
}

test_physics_by_id() {
  for ((i=1; i<=ITERATIONS; i++)); do
    ID=$((RANDOM % MAX_LAUREATE_ID + 1))
    curl -s -o /dev/null -w "GET /laureates/physics/$ID: %{http_code}\n" "$BASE_URL/laureates/physics/$ID" &
  done
}

echo "Starting stress test with $CONCURRENT_REQUESTS concurrent requests and $ITERATIONS iterations per endpoint..."

for ((j=1; j<=CONCURRENT_REQUESTS; j++)); do
  test_physics
  test_physics_by_id
done

wait
echo "Stress test completed."