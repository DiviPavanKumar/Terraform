variable "project_name" {
  default = "Roboshop"
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

variable "sg_ingress_rules" {
  default = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      description = "allowing all ports from internet"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "instances" {
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Web = "t2.micro"
  }
}

 variable "zone_name" {
   default = "pavandivi.online"
 }