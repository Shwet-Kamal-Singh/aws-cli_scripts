# list_buckets.sh

#!/bin/bash

# Function to list all S3 buckets
function list_buckets() {
    echo "Retrieving list of S3 buckets..."

    # Use AWS CLI to list S3 buckets
    aws s3 ls

    if [ $? -eq 0 ]; then
        echo "Buckets listed successfully."
    else
        echo "Failed to retrieve bucket list."
    fi
}

# Call the list_buckets function
list_buckets