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
  default = "ami-00a929b66ed6e0de6"
  description = "The ID of the Amazon Machine Image (AMI) used to launch the EC2 instance."
}

# -----------------------------------------
# EC2 Instance Type Variable
# Defines the hardware configuration (CPU, memory, etc.)
# -----------------------------------------
variable "instance_type" {
  type    = string
  default = "t2.micro"
  description = "The type of EC2 instance to launch, such as t2.micro, t3.small, etc."
}

# -----------------------------------------
# EC2 Name Tag Variable
# Assigns a 'Name' tag to the EC2 instance
# -----------------------------------------
variable "tags" {
  type    = string
  default = "Variable Testing"
  description = "The value of the 'Name' tag assigned to the EC2 instance."
}

# -----------------------------------------
# Default Tags Map Variable
# Applies these tags to all AWS resources through the provider block
# -----------------------------------------
variable "default_tags" {
  type = map(string)
  default = {
    Environment = "Testing"                # Environment type (e.g., Dev, Test, Prod)
    Name        = "Testing Default Tags"   # Default Name tag for resources
    Scripting   = "Terraform"              # Tool used to provision resources
    By          = "Pavan Kumar Divi"       # Creator or responsible person
  }
  description = "A map of default tags to be applied to all AWS resources managed by this provider."
}
