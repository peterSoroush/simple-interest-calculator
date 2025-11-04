#!/usr/bin/env bash
# simple-interest.sh - calculate simple interest
# Usage: ./simple-interest.sh <principal> <rate_percent> <time_years>
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <annual_rate_percent> <time_years>"
  exit 1
fi

P=$1
R=$2
T=$3

# Simple interest = (P * R * T) / 100
SI=$(awk "BEGIN{printf \"%.2f\", ($P * $R * $T)/100}")
echo "Principal: $P"
echo "Rate (%): $R"
echo "Time (years): $T"
echo "Simple Interest: $SI"
