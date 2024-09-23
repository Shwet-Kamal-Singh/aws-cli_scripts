# create_user.sh

#!/bin/bash

# Function to create an IAM user
function create_user() {
    read -p "Enter the username for the new IAM user: " USERNAME

    if [ -z "$USERNAME" ]; then
        echo "Username cannot be empty."
        return 1
    fi

    echo "Creating IAM user '$USERNAME'..."

    # Use AWS CLI to create the IAM user
    aws iam create-user --user-name "$USERNAME"

    if [ $? -eq 0 ]; then
        echo "IAM user '$USERNAME' created successfully."
    else
        echo "Failed to create IAM user."
    fi
}

# Call the create_user function
create_user