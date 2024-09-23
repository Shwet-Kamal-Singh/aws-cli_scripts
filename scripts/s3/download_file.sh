# download_file.sh

#!/bin/bash

# Function to download a file from S3
function download_file() {
    if [ "$#" -ne 2 ]; then
        echo "Usage: download_file <bucket_name> <file_key>"
        return 1
    fi

    BUCKET_NAME=$1
    FILE_KEY=$2

    echo "Downloading file '$FILE_KEY' from bucket '$BUCKET_NAME'..."

    # Use AWS CLI to download the file
    aws s3 cp "s3://$BUCKET_NAME/$FILE_KEY" .

    if [ $? -eq 0 ]; then
        echo "File downloaded successfully."
    else
        echo "Failed to download file."
    fi
}

# Call the download_file function with provided arguments
download_file "$@"