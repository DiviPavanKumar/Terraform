# -----------------------------------------
# Terraform Initialization Block
# Specifies required providers and remote backend configuration
# -----------------------------------------

terraform {
  required_providers {
    # Declare the AWS provider source and version
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"  # Specific version to ensure compatibility and avoid unexpected changes
    }
  }

  # Configure remote backend for storing Terraform state file
  backend "s3" {
    bucket         = "remote-state-file-practice"     # S3 bucket to store the remote state
    key            = "aws"                            # Path/key for the state file inside the bucket
    region         = "us-east-1"                      # AWS region where the S3 bucket and DynamoDB table exist
    dynamodb_table = "remote-state-file-lock"         # DynamoDB table for state locking and consistency
    use_lockfile   = true                             # Enables state locking to avoid concurrent modifications
  }
}

# -----------------------------------------
# AWS Provider Configuration
# Sets region and default tags for all AWS resources
# -----------------------------------------

provider "aws" {
  # AWS region for deploying infrastructure
  region = "us-east-1"
}








