# create_table.sh

#!/bin/bash

# Function to create a DynamoDB table
function create_table() {
    read -p "Enter the table name: " TABLE_NAME
    read -p "Enter the primary key (e.g., id): " PRIMARY_KEY
    read -p "Enter the primary key type (e.g., S for String, N for Number): " PRIMARY_KEY_TYPE

    if [ -z "$TABLE_NAME" ] || [ -z "$PRIMARY_KEY" ] || [ -z "$PRIMARY_KEY_TYPE" ]; then
        echo "All fields are required."
        return 1
    fi

    echo "Creating DynamoDB table '$TABLE_NAME' with primary key '$PRIMARY_KEY'..."

    # Use AWS CLI to create the DynamoDB table
    aws dynamodb create-table \
        --table-name "$TABLE_NAME" \
        --attribute-definitions AttributeName="$PRIMARY_KEY",AttributeType="$PRIMARY_KEY_TYPE" \
        --key-schema AttributeName="$PRIMARY_KEY",KeyType=HASH \
        --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5

    if [ $? -eq 0 ]; then
        echo "DynamoDB table '$TABLE_NAME' created successfully."
    else
        echo "Failed to create DynamoDB table."
    fi
}

# Call the create_table function
create_table