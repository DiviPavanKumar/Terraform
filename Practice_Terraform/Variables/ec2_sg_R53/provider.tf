terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
  backend "s3" {
  bucket         = "remote-state-file-practice"  
  key            = "aws"                         
  region         = "us-east-1"                   
  dynamodb_table = "remote-state-file-lock"      
  use_lockfile   = true                          
}
}

provider "aws" {
  region = "us-east-1"
  default_tags {
  tags = {
    Environment = "Testing"   
    Scripting   = "Terraform" 
    By   = "Pavan Kumar Divi" 
  }
}
}