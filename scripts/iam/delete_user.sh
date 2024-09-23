# delete_user.sh

#!/bin/bash

# Function to delete an IAM user
function delete_user() {
    read -p "Enter the username of the IAM user to delete: " USERNAME

    if [ -z "$USERNAME" ]; then
        echo "Username cannot be empty."
        return 1
    fi

    echo "Deleting IAM user '$USERNAME'..."

    # Use AWS CLI to delete the IAM user
    aws iam delete-user --user-name "$USERNAME"

    if [ $? -eq 0 ]; then
        echo "IAM user '$USERNAME' deleted successfully."
    else
        echo "Failed to delete IAM user."
    fi
}

# Call the delete_user function
delete_user