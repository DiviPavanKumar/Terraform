variable "ami_id" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ami-00a929b66ed6e0de6"
}

variable "instance_type" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "allow_all"
}

variable "sg_tag" {
  description = "Name of the security group"
  type        = string
  default     = "All Traffic allowed"
}

variable "cidr_blocks" {
  description = "CIDR blocks for the security group"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
    default     = {
        Name        = "First_Terraform_Code"
        Environment = "Dev"
        Owner       = "Terraform"
        Project     = "Terraform-Project"
        CreatedBy   = "Pavan Kumar Divi"    
    }
}
