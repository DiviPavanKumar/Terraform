resource "aws_instance" "Normal_Creation_OneEC2" {
 # Specify the Amazon Machine Image (AMI) ID
 ami = var.ami
 
 # Specify the instance type
 instance_type = var.instance_type
 # Define tags for the instance
 tags = {
   Name = var.ec2_tags  # Name tag to identify the instance
 }
}