# upload_file.sh

#!/bin/bash

# Function to upload a file to S3
function upload_file() {
    if [ "$#" -ne 2 ]; then
        echo "Usage: upload_file <bucket_name> <file_path>"
        return 1
    fi

    BUCKET_NAME=$1
    FILE_PATH=$2

    # Check if the file exists
    if [ ! -f "$FILE_PATH" ]; then
        echo "File '$FILE_PATH' does not exist."
        return 1
    fi

    echo "Uploading file '$FILE_PATH' to bucket '$BUCKET_NAME'..."

    # Use AWS CLI to upload the file
    aws s3 cp "$FILE_PATH" "s3://$BUCKET_NAME/"

    if [ $? -eq 0 ]; then
        echo "File uploaded successfully."
    else
        echo "Failed to upload file."
    fi
}

# Call the upload_file function with provided arguments
upload_file "$@"