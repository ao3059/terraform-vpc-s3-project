# Terraform VPC and S3 Project

This project sets up an Amazon Web Services (AWS) Virtual Private Cloud (VPC) and an S3 bucket using Terraform, with a backend configuration that stores the Terraform state in an S3 bucket with DynamoDB for state locking.

## Project Overview

- **VPC Module**: Creates a VPC with customizable CIDR block and subnets.
- **S3 Bucket**: Creates an S3 bucket for storing Terraform state files.
- **Backend Configuration**: Configures the S3 bucket as the backend for storing Terraform state and DynamoDB table for state locking to ensure safe and concurrent management of the infrastructure state.

## Prerequisites

- **AWS Account**: You will need an AWS account to deploy this infrastructure.
- **Terraform**: Install Terraform on your local machine. [Installation guide](https://learn.hashicorp.com/terraform/getting-started/install.html)
- **AWS CLI**: Configure the AWS CLI with credentials that have permissions to manage S3, VPC, and DynamoDB resources. [Installation guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

## Project Structure

```plaintext
.
├── main.tf               # Main Terraform configuration
├── backend.tf            # Backend configuration for remote state
├── modules/              # Modules directory
│   ├── vpc/              # VPC module configuration
│   └── s3/               # S3 module configuration
├── .gitignore            # Specifies files and directories to ignore in Git


Configuration
Variables
The main.tf file references modules for VPC and S3 bucket creation. The variables can be modified based on your requirements.

Backend
The backend.tf file configures the S3 bucket and DynamoDB table to store the Terraform state. This includes:

bucket: S3 bucket name
region: AWS region for the bucket and DynamoDB table
key: Path within the bucket to store the state file
dynamodb_table: DynamoDB table used for state locking
Usage
Initialize the Terraform Project:

bash
terraform init
Plan the Infrastructure: This command shows the changes that Terraform will make to match the configuration.

bash
terraform plan
Apply the Configuration: This command applies the changes and creates the resources on AWS.

bash
terraform apply
Destroy the Infrastructure: To remove all resources created by this Terraform configuration, use:

bash
terraform destroy
