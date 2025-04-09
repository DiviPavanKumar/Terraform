variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = "Catalogue"
}

# variable "ami_id" {
#   description = "Value of the Name tag for the EC2 instance"
#   type        = string
#   default     = "ami-00a929b66ed6e0de6"
# }

# variable "sg_name" {
#   description = "Name of the security group"
#   type        = string
#   default     = "allow_all"
# }

# variable "sg_tag" {
#   description = "Name of the security group"
#   type        = string
#   default     = "All Traffic allowed"
# }

# variable "cidr_blocks" {
#   description = "CIDR blocks for the security group"
#   type        = list(string)
#   default     = ["0.0.0.0/0"]
# }

variable "tags_all" {
  description = "Tags for the resources"
  type        = map(string)
    default     = {
        Environment = "Dev"
        Owner       = "Pavan"
        Project     = "RoboShop"
        CreatedBy   = "Pavan Kumar Divi"    
}
}

variable "zone_id" {
  description = "value"
  default = "Z011506373MMX1KADQX"
}

variable "domain" {
  default = "pavandivi.online"
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
  default     = "OSI_Laptop"
}

variable "isPROD" {
  default = false
}