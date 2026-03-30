#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Clear the file if it exists
> "$OUTPUT"

# Compose the paragraph and write to file
echo "=== MY OPEN SOURCE MANIFESTO ===" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should empower people. Every day, I rely on tools like $TOOL to learn and grow." >> "$OUTPUT"
echo "To me, the core of open source is $FREEDOM. It is about sharing knowledge without barriers." >> "$OUTPUT"
echo "If I could contribute to the community today, I would build $BUILD and release it under an open license so others could stand on my shoulders." >> "$OUTPUT"
echo "================================" >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo "Here is what it says:"
echo "--------------------------------------------------"
cat "$OUTPUT"
