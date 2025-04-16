# -----------------------------------------
# Terraform script to create a single EC2 instance on AWS
# with basic configuration and tagging
# -----------------------------------------

resource "aws_instance" "Normal_Creation_OneEC2" {
  # Specify the Amazon Machine Image (AMI) ID
  ami = "ami-00a929b66ed6e0de6"
  
  # Specify the instance type
  instance_type = "t2.micro"

  # Define tags for the instance
  tags = {
    Name = "Sample EC2"  # Name tag to identify the instance
  }
}