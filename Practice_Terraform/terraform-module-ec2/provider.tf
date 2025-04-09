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
}
# -----------------------------------------
# AWS Provider Configuration
# Sets region and default tags for all AWS resources
# -----------------------------------------

provider "aws" {
  # AWS region for deploying infrastructure
  region = "us-east-1"

  # Apply default tags to all AWS resources managed by this provider
  default_tags {
    tags = var.default_tags  # Default tags passed via variables for flexibility
  }
}









