variable "project_name" {
  default = "Amazon"
}       

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
    Environment = "DEV"
    Terraform = "true"
    By = "Pavan Kumar Divi"
  }
}

variable "public_subnet_cidr" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  default = ["10.0.3.0/24","10.0.4.0/24"]
}

variable "database_subnet_cidr" {
  default = ["10.0.5.0/24","10.0.6.0/24"]
}
