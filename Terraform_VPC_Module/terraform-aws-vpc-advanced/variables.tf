variable "cidr_block" {

}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}

variable "project_name" {
  
}

variable "common_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
  
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "The number of public subnets must match the number of availability zones/Please provide 2 public subnet CIDR blocks."
  }
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "The number of private subnets must match the number of availability zones/Please provide 2 private subnet CIDR blocks."
  }
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "The number of database subnets must match the number of availability zones/Please provide 2 database subnet CIDR blocks."
  }
}

variable "nat_gateway_tags" {
  default = {}
  
}

variable "public_route_table-tags" {
  default = {}
}

variable "private_route_table-tags" {
    default = {}
}

variable "database_route_table-tags" {
  default = {}
  
}

variable "db_subnet_group_tags" {
  default = {}
  
}
