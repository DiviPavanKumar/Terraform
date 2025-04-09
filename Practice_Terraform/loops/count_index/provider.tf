# --------------------------------------------------------
# Terraform Block: Required Provider & Backend Configuration
# --------------------------------------------------------

terraform {
  # Specify required providers and versions
  required_providers {
    aws = {
      source  = "hashicorp/aws"    # Specifies the AWS provider from HashiCorp
      version = "5.94.1"           # Lock the provider version for consistency across teams
    }
  }

  # -------------------------------------
  # Remote Backend Configuration - S3
  # -------------------------------------
  backend "s3" {
    bucket         = "remote-state-file-practice"    # S3 bucket to store the Terraform state file
    key            = "aws"                           # Path/key within the bucket for the state file
    region         = "us-east-1"                     # AWS region for the S3 bucket
    dynamodb_table = "remote-state-file-lock"        # DynamoDB table for state locking to prevent race conditions
    use_lockfile   = true                            # Enables Terraform's local lockfile for safe concurrent access
  }
}

# --------------------------------------------------------
# AWS Provider Configuration with Default Tags
# --------------------------------------------------------

provider "aws" {
  # Define the AWS region where all resources will be created
  region = "us-east-1"   # You can parameterize this using a variable if needed

  # -----------------------------------------
  # Default Tags Block
  # -----------------------------------------
  # These tags will automatically be applied to all AWS resources
  # created through this provider configuration.
default_tags {
  tags = {
    Environment = "Testing"                  # Indicates the environment type
    Scripting   = "Terraform"                # Notes the automation tool used
    By   = "Pavan Kumar Divi"         # Person who tested or created the setup
  }
}
}











