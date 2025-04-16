terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = "Testing"
      Source = "Terraform"
      By = "Pavan Kumar Divi"
      Project = "Terraform_Practice"
    }
  }
}