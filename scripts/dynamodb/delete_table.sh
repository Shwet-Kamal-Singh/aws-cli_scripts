# delete_table.sh

#!/bin/bash

# Function to delete a DynamoDB table
function delete_table() {
    read -p "Enter the table name to delete: " TABLE_NAME

    if [ -z "$TABLE_NAME" ]; then
        echo "Table name cannot be empty."
        return 1
    fi

    echo "Deleting DynamoDB table '$TABLE_NAME'..."

    # Use AWS CLI to delete the DynamoDB table
    aws dynamodb delete-table --table-name "$TABLE_NAME"

    if [ $? -eq 0 ]; then
        echo "DynamoDB table '$TABLE_NAME' deleted successfully."
    else
        echo "Failed to delete DynamoDB table."
    fi
}

# Call the delete_table function
delete_table