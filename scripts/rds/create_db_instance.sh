# create_db_instance.sh

#!/bin/bash

# Function to create an RDS DB instance
function create_db_instance() {
    if [ "$#" -ne 5 ]; then
        echo "Usage: create_db_instance <db_instance_identifier> <db_instance_class> <engine> <username> <password>"
        return 1
    fi

    DB_INSTANCE_IDENTIFIER=$1
    DB_INSTANCE_CLASS=$2
    ENGINE=$3
    USERNAME=$4
    PASSWORD=$5

    echo "Creating RDS DB instance '$DB_INSTANCE_IDENTIFIER'..."

    # Use AWS CLI to create the DB instance
    aws rds create-db-instance \
        --db-instance-identifier "$DB_INSTANCE_IDENTIFIER" \
        --db-instance-class "$DB_INSTANCE_CLASS" \
        --engine "$ENGINE" \
        --master-username "$USERNAME" \
        --master-user-password "$PASSWORD" \
        --allocated-storage 20 \
        --no-publicly-accessible

    if [ $? -eq 0 ]; then
        echo "DB instance '$DB_INSTANCE_IDENTIFIER' created successfully."
    else
        echo "Failed to create DB instance."
    fi
}

# Call the create_db_instance function with provided arguments
create_db_instance "$@"