terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
  
  backend "s3" {
    bucket = "remote-state-file-practice"
    key    = "aws"
    region = "us-east-1"
    dynamodb_table = "remote-state-file-lock"
    use_lockfile = true
  }
}

# -----------------------------------------
# AWS Provider Configuration
# Sets region and default tags for all AWS resources
# -----------------------------------------

provider "aws" {
  # AWS region where resources will be deployed
  region = "us-east-1"

  # Default tags automatically applied to all AWS resources created by this provider
  default_tags {
    tags = {
      Environment = "Testing"                  # Indicates the environment type
      Name        = "Testing Default Tags"     # Default name tag for identification
      Scripting   = "Terraform"                # Notes the automation tool used
      By   = "Pavan Kumar Divi"         # Person who tested or created the setup
    }
  }
}











