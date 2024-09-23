# list_stacks.sh

#!/bin/bash

# Function to list all CloudFormation stacks
function list_stacks() {
    echo "Retrieving list of CloudFormation stacks..."

    # Use AWS CLI to list CloudFormation stacks
    aws cloudformation list-stacks --query "StackSummaries[?StackStatus!='DELETE_COMPLETE'].{StackName: StackName, StackStatus: StackStatus}" --output table

    if [ $? -eq 0 ]; then
        echo "CloudFormation stacks listed successfully."
    else
        echo "Failed to retrieve CloudFormation stacks."
    fi
}

# Call the list_stacks function
list_stacks