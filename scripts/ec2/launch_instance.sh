# launch_instance.sh

#!/bin/bash

# Function to launch an EC2 instance
function launch_instance() {
    read -p "Enter the AMI ID: " AMI_ID
    read -p "Enter the instance type (e.g., t2.micro): " INSTANCE_TYPE
    read -p "Enter the key pair name: " KEY_NAME
    read -p "Enter the security group ID: " SECURITY_GROUP_ID

    if [ -z "$AMI_ID" ] || [ -z "$INSTANCE_TYPE" ] || [ -z "$KEY_NAME" ] || [ -z "$SECURITY_GROUP_ID" ]; then
        echo "All fields are required."
        return 1
    fi

    echo "Launching EC2 instance with AMI ID '$AMI_ID'..."

    # Use AWS CLI to launch the EC2 instance
    INSTANCE_ID=$(aws ec2 run-instances \
        --image-id "$AMI_ID" \
        --instance-type "$INSTANCE_TYPE" \
        --key-name "$KEY_NAME" \
        --security-group-ids "$SECURITY_GROUP_ID" \
        --query "Instances[0].InstanceId" \
        --output text)

    if [ $? -eq 0 ]; then
        echo "EC2 instance launched successfully with Instance ID: $INSTANCE_ID"
    else
        echo "Failed to launch EC2 instance."
    fi
}

# Call the launch_instance function
launch_instance