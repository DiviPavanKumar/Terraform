terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
  backend "s3" {
    bucket = "remote-state-file-practice"
    key    = "VPC-EC2"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-1"
 default_tags {
   tags = {
    Environment = "Development"
    Script = "Terraform"
    Project = "Creation of EC2 with VPC"
    By = "Pavan Kumar Divi"
   }
 }
}