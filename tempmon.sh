#!/bin/bash

# Get Raspberry PI temperature
TEMP=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')

# Get timestamp
TIMESTAMP=$(date -Iseconds)

# File to write log to
FILE="./$(date -Idate)-heat.log"

# Write to file
echo "$TIMESTAMP $TEMP" >> $FILE
