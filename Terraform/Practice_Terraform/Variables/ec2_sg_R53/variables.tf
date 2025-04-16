variable "ami" {
  type        = string
  default     = "ami-00a929b66ed6e0de6"
  description = "The ID of the Amazon Machine Image (AMI) used to launch the EC2 instance."
}

# EC2 instance type determines hardware specs like CPU, RAM.
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of EC2 instance to launch (e.g., t2.micro, t3.small, etc.)."
}

# Name tag for the EC2 instance.
variable "ec2_tags" {
  type        = string
  default     = "sampletest"
  description = "Name tag for the EC2 instance for easy identification in the AWS Console."
}

# ------------------------------------------------------------
# Security Group Configuration Variables
# ------------------------------------------------------------

# Name of the security group.
variable "aws_security_group" {
  type        = string
  default     = "allow_all"
  description = "Name of the security group to be created."
}

# List of allowed CIDR blocks for inbound/outbound traffic.
variable "cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "List of IP ranges (in CIDR notation) to allow access. '0.0.0.0/0' allows traffic from anywhere."
}

# Name tag for the security group.
variable "sg_tags" {
  type        = string
  default     = "Allow_All_Traffic"
  description = "Name tag assigned to the security group."
}

variable "zone_id" {
type = string
default = "Z011506373MMX1KADQX"
}
