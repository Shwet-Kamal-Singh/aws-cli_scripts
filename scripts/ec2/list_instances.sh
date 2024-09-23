# list_instances.sh

#!/bin/bash

# Function to list all EC2 instances
function list_instances() {
    echo "Retrieving list of EC2 instances..."

    # Use AWS CLI to list EC2 instances
    aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,LaunchTime]" --output table

    if [ $? -eq 0 ]; then
        echo "EC2 instances listed successfully."
    else
        echo "Failed to retrieve EC2 instances."
    fi
}

# Call the list_instances function
list_instances