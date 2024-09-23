# AWS CLI Scripts for Cloud Management

This repository contains a collection of Bash scripts for managing various AWS services using the AWS CLI. These scripts are organized into different categories for easy navigation and use.

## Table of Contents

- [Directory Structure](#directory-structure)
- [Categories](#categories)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Disclaimer](#disclaimer)
- [Contact](#contact)

## Directory Structure
```
aws-cli_scripts/
│
├── README.md
├── requirements.txt        # Dependencies (if any)
├── scripts/
│   ├── ec2/
│   │   ├── launch_instance.sh
│   │   ├── terminate_instance.sh
│   │   └── list_instances.sh
│   ├── s3/
│   │   ├── upload_file.sh
│   │   ├── download_file.sh
│   │   └── list_buckets.sh
│   ├── iam/
│   │   ├── create_user.sh
│   │   ├── delete_user.sh
│   │   └── list_users.sh
│   ├── rds/
│   │   ├── create_db_instance.sh
│   │   ├── delete_db_instance.sh
│   │   └── list_db_instances.sh
│   ├── lambda/
│   │   ├── create_function.sh
│   │   ├── delete_function.sh
│   │   └── list_functions.sh
│   ├── cloudformation/
│   │   ├── create_stack.sh
│   │   ├── delete_stack.sh
│   │   └── list_stacks.sh
│   └── dynamodb/
│       ├── create_table.sh
│       ├── delete_table.sh
│       └── list_tables.sh
│
└── utils/                  # Utility scripts or functions
    ├── config.sh           # Configuration settings
    └── helpers.sh          # Helper functions
```


## Categories

1. **[Utils](./utils/README.md)**: Scripts for configuration and helper functions for AWS CLI operations.
   - **config.sh**: Prompts for AWS configuration details and creates necessary configuration files.
   - **helpers.sh**: Contains helper functions for checking AWS CLI installation, configuring it, and listing S3 buckets.

2. **[S3](./scripts/s3/README.md)**: Scripts for managing S3 buckets and objects.
   - **download_file.sh**: Downloads a file from an S3 bucket.
   - **upload_file.sh**: Uploads a file to an S3 bucket.

3. **[RDS](./scripts/rds/README.md)**: Scripts for managing RDS instances.
   - **create_db_instance.sh**: Creates an RDS DB instance.
   - **delete_db_instance.sh**: Deletes an RDS DB instance.
   - **list_db_instances.sh**: Lists all RDS DB instances.

4. **[Lambda](./scripts/lambda/README.md)**: Scripts for managing AWS Lambda functions.
   - **create_function.sh**: Creates an AWS Lambda function.
   - **delete_function.sh**: Deletes an AWS Lambda function.
   - **list_functions.sh**: Lists all AWS Lambda functions.

5. **[IAM](./scripts/iam/README.md)**: Scripts for managing IAM users.
   - **create_user.sh**: Creates a new IAM user.
   - **delete_user.sh**: Deletes an IAM user.
   - **list_users.sh**: Lists all IAM users.

6. **[EC2](./scripts/ec2/README.md)**: Scripts for managing EC2 instances.
   - **launch_instance.sh**: Launches a new EC2 instance.
   - **list_instances.sh**: Lists all EC2 instances.
   - **terminate_instance.sh**: Terminates an EC2 instance.

7. **[DynamoDB](./scripts/dynamodb/README.md)**: Scripts for managing DynamoDB tables.
   - **create_table.sh**: Creates a DynamoDB table.
   - **delete_table.sh**: Deletes a DynamoDB table.
   - **list_tables.sh**: Lists all DynamoDB tables.

8. **[CloudFormation](./scripts/cloudformation/README.md)**: Scripts for managing CloudFormation stacks.
   - **create_stack.sh**: Creates a CloudFormation stack.
   - **delete_stack.sh**: Deletes a CloudFormation stack.
   - **list_stacks.sh**: Lists all CloudFormation stacks.

## Prerequisites

- AWS CLI installed and configured
- Bash shell environment
- Basic understanding of AWS services
- Specific permissions may be required for certain operations (check individual script documentation)

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/Shwet-Kamal-Singh/aws-cli_scripts.git
   ```

2. Navigate to the aws-cli_scripts directory:
   ```bash
   cd aws-cli_scripts
   ```

3. Choose the category of scripts you need and navigate to that directory.

4. Read the README.md file in the category directory for specific usage instructions.

5. Make the script executable if needed:
   ```bash
   chmod +x script_name.sh
   ```

6. Run the script:
   ```bash
   ./script_name.sh
   ```

## Contributing

Contributions to this project are welcome. Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and test thoroughly.
4. Submit a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Shwet-Kamal-Singh/aws-cli_scripts/edit/blob/main/LICENSE) file for details.

![Original Creator](https://img.shields.io/badge/Original%20Creator-Shwet%20Kamal%20Singh-blue)
![License](https://img.shields.io/badge/License-MIT-green)

## Disclaimer

These scripts are provided as-is, without warranty. Use caution when running these scripts, especially those requiring elevated privileges, as they can significantly impact your system.

## Contact

For any inquiries or permissions, please contact:
- Email: shwetkamalsingh55@gmail.com
- LinkedIn: https://www.linkedin.com/in/shwet-kamal-singh/
- GitHub: https://github.com/Shwet-Kamal-Singh