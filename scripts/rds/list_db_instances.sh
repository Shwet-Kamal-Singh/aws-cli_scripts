# list_db_instances.sh

#!/bin/bash

# Function to list all RDS DB instances
function list_db_instances() {
    echo "Retrieving list of RDS DB instances..."

    # Use AWS CLI to list RDS DB instances
    aws rds describe-db-instances --query "DBInstances[*].[DBInstanceIdentifier,DBInstanceStatus]" --output table

    if [ $? -eq 0 ]; then
        echo "DB instances listed successfully."
    else
        echo "Failed to retrieve DB instances."
    fi
}

# Call the list_db_instances function
list_db_instances