terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-file-practice"
    key    = "foreach_demo"
    region = "us-east-1"
    dynamodb_table = "remote-state-file-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}