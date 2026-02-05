#!/usr/bin/env python3
"""
Process all.csv to create final.csv with latest entries for each Group/Title combination.
"""

import csv
from datetime import datetime
from collections import defaultdict

def parse_datetime(date_str):
    """Parse ISO 8601 datetime string."""
    try:
        return datetime.fromisoformat(date_str.replace('Z', '+00:00'))
    except:
        return datetime.min

def process_csv(input_file, output_file):
    """Process CSV to keep only latest entries per Group/Title."""
    # Dictionary to store latest entry for each (Group, Title) pair
    latest_entries = {}
    
    # Read input CSV
    with open(input_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        
        for row in reader:
            group = row['Group']
            title = row['Title']
            
            # Skip header rows (where Group="Group" and Title="Title")
            if group == 'Group' and title == 'Title':
                continue
            
            key = (group, title)
            last_modified = row['Last Modified']
            
            # Parse last modified date
            mod_date = parse_datetime(last_modified)
            
            # If this is the first entry for this key, or it's newer, store it
            if key not in latest_entries:
                latest_entries[key] = (mod_date, row)
            else:
                existing_date, _ = latest_entries[key]
                if mod_date > existing_date:
                    latest_entries[key] = (mod_date, row)
    
    # Write output CSV
    with open(output_file, 'w', encoding='utf-8', newline='') as f:
        if latest_entries:
            # Get fieldnames from the first entry
            fieldnames = list(latest_entries[list(latest_entries.keys())[0]][1].keys())
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            
            # Write all latest entries (sorted by Group, then Title for consistency)
            for (group, title), (_, row) in sorted(latest_entries.items()):
                writer.writerow(row)
    
    print(f"Processed {len(latest_entries)} unique Group/Title combinations")
    print(f"Output written to {output_file}")

if __name__ == '__main__':
    process_csv('all.csv', 'final.csv')
