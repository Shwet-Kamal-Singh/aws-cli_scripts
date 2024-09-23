# list_tables.sh

#!/bin/bash

# Function to list all DynamoDB tables
function list_tables() {
    echo "Retrieving list of DynamoDB tables..."

    # Use AWS CLI to list DynamoDB tables
    aws dynamodb list-tables --output table

    if [ $? -eq 0 ]; then
        echo "DynamoDB tables listed successfully."
    else
        echo "Failed to retrieve DynamoDB tables."
    fi
}

# Call the list_tables function
list_tables