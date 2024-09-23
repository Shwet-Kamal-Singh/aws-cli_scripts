# terminate_instance.sh

#!/bin/bash

# Function to terminate an EC2 instance
function terminate_instance() {
    read -p "Enter the Instance ID of the EC2 instance to terminate: " INSTANCE_ID

    if [ -z "$INSTANCE_ID" ]; then
        echo "Instance ID cannot be empty."
        return 1
    fi

    echo "Terminating EC2 instance '$INSTANCE_ID'..."

    # Use AWS CLI to terminate the EC2 instance
    aws ec2 terminate-instances --instance-ids "$INSTANCE_ID"

    if [ $? -eq 0 ]; then
        echo "EC2 instance '$INSTANCE_ID' terminated successfully."
    else
        echo "Failed to terminate EC2 instance."
    fi
}

# Call the terminate_instance function
terminate_instance