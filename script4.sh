#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh dummy_log.txt error

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "The file $LOGFILE is empty. Please provide a valid log."
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "===================================="
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "===================================="
echo "Here are the matching lines (up to last 5):"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
