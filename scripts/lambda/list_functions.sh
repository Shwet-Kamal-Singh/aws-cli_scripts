# list_functions.sh

#!/bin/bash

# Function to list all AWS Lambda functions
function list_functions() {
    echo "Retrieving list of AWS Lambda functions..."

    # Use AWS CLI to list Lambda functions
    aws lambda list-functions --query "Functions[*].[FunctionName,Runtime,LastModified]" --output table

    if [ $? -eq 0 ]; then
        echo "Lambda functions listed successfully."
    else
        echo "Failed to retrieve Lambda functions."
    fi
}

# Call the list_functions function
list_functions