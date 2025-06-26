#!/bin/bash

# Get all domains from /etc/userdomains
domains=$(perl -F: -lane 'if (@F[1] =~ /$user/) {print @F[0]}' /etc/userdomains)

# Loop through each domain and run the WHM API resetzone command
for domain in $domains; do
    echo "Resetting zone for $domain..."
    whmapi1 --output=jsonpretty resetzone domain="$domain"
done
