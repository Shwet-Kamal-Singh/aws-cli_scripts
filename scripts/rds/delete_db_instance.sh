# delete_db_instance.sh

#!/bin/bash

# Function to delete an RDS DB instance
function delete_db_instance() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: delete_db_instance <db_instance_identifier>"
        return 1
    fi

    DB_INSTANCE_IDENTIFIER=$1

    echo "Deleting RDS DB instance '$DB_INSTANCE_IDENTIFIER'..."

    # Use AWS CLI to delete the DB instance
    aws rds delete-db-instance \
        --db-instance-identifier "$DB_INSTANCE_IDENTIFIER" \
        --skip-final-snapshot

    if [ $? -eq 0 ]; then
        echo "DB instance '$DB_INSTANCE_IDENTIFIER' deleted successfully."
    else
        echo "Failed to delete DB instance."
    fi
}

# Call the delete_db_instance function with provided arguments
delete_db_instance "$@"