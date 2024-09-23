# delete_stack.sh

#!/bin/bash

# Function to delete a CloudFormation stack
function delete_stack() {
    read -p "Enter the stack name to delete: " STACK_NAME

    if [ -z "$STACK_NAME" ]; then
        echo "Stack name cannot be empty."
        return 1
    fi

    echo "Deleting CloudFormation stack '$STACK_NAME'..."

    # Use AWS CLI to delete the CloudFormation stack
    aws cloudformation delete-stack --stack-name "$STACK_NAME"

    if [ $? -eq 0 ]; then
        echo "CloudFormation stack '$STACK_NAME' deletion initiated successfully."
    else
        echo "Failed to delete CloudFormation stack."
    fi
}

# Call the delete_stack function
delete_stack