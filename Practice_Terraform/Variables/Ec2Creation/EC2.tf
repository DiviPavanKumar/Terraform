# -----------------------------------------
# Terraform Script to Launch a Single EC2 Instance on AWS
# Using Variable Inputs for Flexibility and Reusability
# -----------------------------------------

resource "aws_instance" "testing" {
  # AMI ID for the EC2 instance
  # This should be passed as a variable (e.g., Amazon Linux 2, Ubuntu, etc.)
  ami = var.ami

  # Instance type to define hardware (e.g., t2.micro, t3.small, etc.)
  # This is also passed as a variable to allow flexible instance sizing
  instance_type = var.instance_type

  # Tags applied to the EC2 instance
  # Here, the Name tag is dynamically assigned from a variable
  tags = {
    Name = var.tags  # Helpful for identifying the instance in the AWS Console
  }
}