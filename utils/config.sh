# config.sh

#!/bin/bash

# Function to prompt for AWS configuration
function configure_aws() {
    echo "Please enter your AWS configuration details."

    read -p "AWS Access Key ID: " AWS_ACCESS_KEY_ID
    read -p "AWS Secret Access Key: " AWS_SECRET_ACCESS_KEY
    read -p "Default Region (e.g., us-east-1): " AWS_DEFAULT_REGION
    read -p "Default Output Format (json, yaml, text): " AWS_OUTPUT_FORMAT

    # Save configuration to AWS CLI config file
    mkdir -p ~/.aws
    cat > ~/.aws/config <<EOL
[default]
region = $AWS_DEFAULT_REGION
output = $AWS_OUTPUT_FORMAT
EOL

    cat > ~/.aws/credentials <<EOL
[default]
aws_access_key_id = $AWS_ACCESS_KEY_ID
aws_secret_access_key = $AWS_SECRET_ACCESS_KEY
EOL

    echo "AWS configuration saved successfully."
}

# Call the function
configure_aws