# delete_function.sh

#!/bin/bash

# Function to delete an AWS Lambda function
function delete_function() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: delete_function <function_name>"
        return 1
    fi

    FUNCTION_NAME=$1

    echo "Deleting Lambda function '$FUNCTION_NAME'..."

    # Use AWS CLI to delete the Lambda function
    aws lambda delete-function --function-name "$FUNCTION_NAME"

    if [ $? -eq 0 ]; then
        echo "Lambda function '$FUNCTION_NAME' deleted successfully."
    else
        echo "Failed to delete Lambda function."
    fi
}

# Call the delete_function function with provided arguments
delete_function "$@"