#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if package is installed (using dpkg for Ubuntu/Debian based systems)
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    echo "--- Package Info ---"
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "--- Philosophy Note ---"
# Case statement for philosophy notes
case $PACKAGE in
    httpd|apache2) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    firefox) echo "Firefox: A nonprofit fighting for an open web" ;;
    python3) echo "Python: The language that democratized programming and AI" ;;
    *) echo "An amazing open-source project." ;;
esac
