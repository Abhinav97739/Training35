#!/bin/bash

# Variables
CPU_USAGE=70  # Example value; replace with your actual value or command to get CPU usage
MEMORY_USAGE=80  # Example value; replace with your actual value or command to get memory usage
THRESHOLD_CPU=75
THRESHOLD_MEM=75

# Check CPU Usage
if (( $(echo "$CPU_USAGE >= $THRESHOLD_CPU" | bc -l) )); then
    echo "High CPU usage detected: $CPU_USAGE%"
fi

# Check Memory Usage
if (( $(echo "$MEMORY_USAGE >= $THRESHOLD_MEM" | bc -l) )); then
    echo "High memory usage detected: $MEMORY_USAGE%"
fi

