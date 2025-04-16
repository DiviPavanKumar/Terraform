# -----------------------------------------
# Terraform Variables Definition
# These variables provide flexibility and reusability in your Terraform code
# -----------------------------------------

# -----------------------------------------
# AMI ID Variable
# Specifies the Amazon Machine Image to be used for EC2
# -----------------------------------------
variable "ami" {
  type    = string
}

# -----------------------------------------
# EC2 Instance Type Variable
# Defines the hardware configuration (CPU, memory, etc.)
# -----------------------------------------
variable "instance_type" {
  type    = string
}

# -----------------------------------------
# EC2 Name Tag Variable
# Assigns a 'Name' tag to the EC2 instance
# -----------------------------------------
variable "tags" {
  type    = string
}

# -----------------------------------------
# Default Tags Map Variable
# Applies these tags to all AWS resources through the provider block
# -----------------------------------------
variable "default_tags" {
  type = map(string)
}
