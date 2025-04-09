variable "instances" {
  type = map
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Catalogue = "t2.micro"
    Redis = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    User = "t2.micro"
    RabbitMQ = "t2.micro"
    Web = "t2.micro"
  }
}

variable "ami_id" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ami-00a929b66ed6e0de6"
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

variable "zone_id" {
  description = "value"
  default = "Z011506373MMX1KADQX"
}

variable "domain" {
  default = "pavandivi.online"
}