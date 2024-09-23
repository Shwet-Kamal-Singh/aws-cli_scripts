# create_stack.sh

#!/bin/bash

# Function to create a CloudFormation stack
function create_stack() {
    read -p "Enter the stack name: " STACK_NAME
    read -p "Enter the template file path (e.g., template.yaml): " TEMPLATE_FILE
    read -p "Enter any parameters (key=value) separated by spaces: " -a PARAMETERS

    if [ -z "$STACK_NAME" ] || [ -z "$TEMPLATE_FILE" ]; then
        echo "Stack name and template file are required."
        return 1
    fi

    # Construct the parameters string for AWS CLI
    PARAMETER_STRING=""
    for PARAM in "${PARAMETERS[@]}"; do
        PARAMETER_STRING+="ParameterKey=${PARAM%%=*},ParameterValue=${PARAM#*=} "
    done

    echo "Creating CloudFormation stack '$STACK_NAME' using template '$TEMPLATE_FILE'..."

    # Use AWS CLI to create the CloudFormation stack
    aws cloudformation create-stack \
        --stack-name "$STACK_NAME" \
        --template-body "file://$TEMPLATE_FILE" \
        --parameters $PARAMETER_STRING \
        --capabilities CAPABILITY_IAM

    if [ $? -eq 0 ]; then
        echo "CloudFormation stack '$STACK_NAME' created successfully."
    else
        echo "Failed to create CloudFormation stack."
    fi
}

# Call the create_stack function
create_stack