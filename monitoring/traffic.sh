
#!/bin/bash

# E-Commerce Application Traffic Generator

BASE_URL="http://YOUR_INGRESS_URL"

echo "Starting E-Commerce traffic generation..."

for i in {1..300}
do
    echo "Request number: $i"

    curl -s -o /dev/null \
         -w "HTTP Status: %{http_code} | Time: %{time_total}s\n" \
         "$BASE_URL/"

    sleep 0.5
done

echo "Traffic generation completed!"
