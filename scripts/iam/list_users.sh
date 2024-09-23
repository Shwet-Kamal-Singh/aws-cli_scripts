# list_users.sh

#!/bin/bash

# Function to list all IAM users
function list_users() {
    echo "Retrieving list of IAM users..."

    # Use AWS CLI to list IAM users
    aws iam list-users --query "Users[*].[UserName,CreateDate]" --output table

    if [ $? -eq 0 ]; then
        echo "IAM users listed successfully."
    else
        echo "Failed to retrieve IAM users."
    fi
}

# Call the list_users function
list_users