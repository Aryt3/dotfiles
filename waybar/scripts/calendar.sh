#!/bin/bash

# Get the current date
CURRENT_DATE=$(date "+%Y-%m-%d")

# Generate the HTML content with the current day marked in red
HTML_CONTENT="<tt><small>"

# Loop through the days of the current month
for DAY in {01..31}; do
    if [ "$DAY" = "$(date '+%d')" ]; then
        # Mark the current day in red
        HTML_CONTENT+="<span style=\"color: red;\">$DAY</span> "
    else
        HTML_CONTENT+="$DAY "
    fi
done

HTML_CONTENT+="</small></tt>"

# Output the HTML content
echo "$HTML_CONTENT"
