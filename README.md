utils
config.sh
helpers.sh

Explanation:
This script prompts the user for their AWS Access Key ID, Secret Access Key, default region, and output format.
It then creates the necessary AWS configuration files in the ~/.aws directory.

Explanation:
This script includes several helper functions for AWS CLI operations, such as checking if the AWS CLI is installed, configuring it, listing S3 buckets, checking the status of an EC2 instance, and displaying help information.


scripts
s3
download_file.sh
upload_file.sh

Explanation:
This script defines a function to download a file from an S3 bucket using the AWS CLI.
It checks for the correct number of arguments and uses aws s3 cp to perform the download.
The downloaded file will be saved in the current directory.

Explanation:
This script defines a function to upload a file to an S3 bucket using the AWS CLI.
It checks for the correct number of arguments and verifies if the specified file exists before attempting the upload.
The file is uploaded using aws s3 cp, and success or failure messages are displayed accordingly.

rds
create_db_instance.sh   
delete_db_instance.sh
list_db_instances.sh

Explanation:
This script defines a function to create an RDS DB instance using the AWS CLI.
It checks for the correct number of arguments, which include the DB instance identifier, class, engine type, username, and password.
The script uses aws rds create-db-instance to create the instance and provides success or failure messages based on the outcome. The allocated storage is set to 20 GB and the instance is not publicly accessible by default.

Explanation:
This script defines a function to delete an RDS DB instance using the AWS CLI.
It checks for the correct number of arguments, which should be the DB instance identifier.
The script uses aws rds delete-db-instance to perform the deletion, with the --skip-final-snapshot option to avoid taking a final snapshot before deletion.
Success or failure messages are displayed based on the outcome of the operation.

Explanation:
This script defines a function to list all RDS DB instances using the AWS CLI.
It uses aws rds describe-db-instances to retrieve and display the list of instances along with their identifiers and statuses in a table format.
Success or failure messages are provided based on the outcome of the operation.


lambda
create_function.sh
delete_function.sh
list_functions.sh

Explanation:
This script defines a function to create an AWS Lambda function using the AWS CLI.
It checks for the correct number of arguments, which include the function name, runtime, IAM role, handler, and the path to the zip file containing the function code.
The script verifies if the specified zip file exists before attempting to create the function.
It uses aws lambda create-function to create the Lambda function and provides success or failure messages based on the outcome of the operation.
Explanation:
This script defines a function to delete an AWS Lambda function using the AWS CLI.
It checks for the correct number of arguments, which should be the function name.
The script uses aws lambda delete-function to perform the deletion and provides success or failure messages based on the outcome of the operation.
Explanation:
This script defines a function to list all AWS Lambda functions using the AWS CLI.
It uses aws lambda list-functions to retrieve and display the list of functions along with their names, runtimes, and last modified dates in a table format.
Success or failure messages are provided based on the outcome of the operation.

iam
create_user.sh
delete_user.sh
list_users.sh

Explanation:
This script prompts the user to input a username for the new IAM user.
It checks if the username is not empty before proceeding.
The script uses aws iam create-user to create the IAM user and provides success or failure messages based on the outcome of the operation.
Explanation:
This script prompts the user to input the username of the IAM user they wish to delete.
It checks if the username is not empty before proceeding.
The script uses aws iam delete-user to delete the IAM user and provides success or failure messages based on the outcome of the operation.
Explanation:
This script defines a function to list all IAM users using the AWS CLI.
It uses aws iam list-users to retrieve and display the list of users along with their usernames and creation dates in a table format.
Success or failure messages are provided based on the outcome of the operation.


ec2
launch_instance.sh
list_instances.sh
terminate_instance.sh

Explanation:
This script prompts the user for the AMI ID, instance type, key pair name, and security group ID required to launch an EC2 instance.
It checks that all fields are filled before proceeding.
The script uses aws ec2 run-instances to launch the instance and retrieves the instance ID of the newly created instance, providing success or failure messages based on the outcome of the operation.

Explanation:
This script defines a function to list all EC2 instances using the AWS CLI.
It uses aws ec2 describe-instances to retrieve and display the list of instances along with their IDs, types, states, and launch times in a table format.
Success or failure messages are provided based on the outcome of the operation.

Explanation:
This script prompts the user to input the Instance ID of the EC2 instance they wish to terminate.
It checks if the Instance ID is not empty before proceeding.
The script uses aws ec2 terminate-instances to terminate the specified instance and provides success or failure messages based on the outcome of the operation.

dynamodb
create_table.sh
delete_table.sh
list_tables.sh

Explanation:
This script prompts the user for the table name, primary key, and primary key type required to create a DynamoDB table.
It checks that all fields are filled before proceeding.
The script uses aws dynamodb create-table to create the table with a provisioned throughput of 5 read and write capacity units, providing success or failure messages based on the outcome of the operation.

Explanation:
This script prompts the user to input the name of the DynamoDB table they wish to delete.
It checks if the table name is not empty before proceeding.
The script uses aws dynamodb delete-table to delete the specified table and provides success or failure messages based on the outcome of the operation.

Explanation:
This script defines a function to list all DynamoDB tables using the AWS CLI.
It uses aws dynamodb list-tables to retrieve and display the list of tables in a table format.
Success or failure messages are provided based on the outcome of the operation.


cloudformation
create_stack.sh
delete_stack.sh
list_stacks.sh


Explanation:
This script prompts the user for the stack name, template file path, and any parameters required to create a CloudFormation stack.
It checks that the stack name and template file are provided before proceeding.
The script constructs the parameters string for the AWS CLI command and uses aws cloudformation create-stack to create the stack, providing success or failure messages based on the outcome of the operation.

Explanation:
This script prompts the user to input the name of the CloudFormation stack they wish to delete.
It checks if the stack name is not empty before proceeding.
The script uses aws cloudformation delete-stack to initiate the deletion of the specified stack and provides success or failure messages based on the outcome of the operation.

Explanation:
This script defines a function to list all CloudFormation stacks using the AWS CLI.
It uses aws cloudformation list-stacks to retrieve and display the list of stacks, filtering out those that are in the DELETE_COMPLETE state, and presents the results in a table format.
Success or failure messages are provided based on the outcome of the operation.