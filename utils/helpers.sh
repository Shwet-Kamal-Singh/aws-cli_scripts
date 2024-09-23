# helpers.sh

#!/bin/bash

# Function to check if AWS CLI is installed
function check_aws_cli() {
    if ! command -v aws &> /dev/null; then
        echo "AWS CLI is not installed. Please install it to proceed."
        exit 1
    else
        echo "AWS CLI is installed."
    fi
}

# Function to configure AWS CLI with default settings
function configure_aws_cli() {
    echo "Configuring AWS CLI..."
    aws configure
    echo "AWS CLI configured successfully."
}

# Function to list all S3 buckets
function list_s3_buckets() {
    echo "Listing all S3 buckets..."
    aws s3 ls
}

# Function to check the status of an EC2 instance
function check_ec2_status() {
    INSTANCE_ID=$1
    if [ -z "$INSTANCE_ID" ]; then
        echo "Usage: check_ec2_status <instance_id>"
        return 1
    fi
    echo "Checking status of EC2 instance: $INSTANCE_ID"
    aws ec2 describe-instances --instance-ids "$INSTANCE_ID" --query "Reservations[*].Instances[*].State.Name" --output text
}

# Function to display help information
function display_help() {
    echo "AWS CLI Helper Functions"
    echo "Usage:"
    echo "  check_aws_cli                - Check if AWS CLI is installed"
    echo "  configure_aws_cli            - Configure AWS CLI"
    echo "  list_s3_buckets              - List all S3 buckets"
    echo "  check_ec2_status <id>        - Check the status of an EC2 instance"
    echo "  display_help                  - Display this help message"
}

# Call the display_help function if no arguments are provided
if [ $# -eq 0 ]; then
    display_help
fi