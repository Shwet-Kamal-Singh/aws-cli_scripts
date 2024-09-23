# create_function.sh

#!/bin/bash

# Function to create an AWS Lambda function
function create_function() {
    if [ "$#" -ne 5 ]; then
        echo "Usage: create_function <function_name> <runtime> <role> <handler> <zip_file>"
        return 1
    fi

    FUNCTION_NAME=$1
    RUNTIME=$2
    ROLE=$3
    HANDLER=$4
    ZIP_FILE=$5

    # Check if the zip file exists
    if [ ! -f "$ZIP_FILE" ]; then
        echo "Zip file '$ZIP_FILE' does not exist."
        return 1
    fi

    echo "Creating Lambda function '$FUNCTION_NAME'..."

    # Use AWS CLI to create the Lambda function
    aws lambda create-function \
        --function-name "$FUNCTION_NAME" \
        --runtime "$RUNTIME" \
        --role "$ROLE" \
        --handler "$HANDLER" \
        --zip-file "fileb://$ZIP_FILE" \
        --publish

    if [ $? -eq 0 ]; then
        echo "Lambda function '$FUNCTION_NAME' created successfully."
    else
        echo "Failed to create Lambda function."
    fi
}

# Call the create_function function with provided arguments
create_function "$@"