variable "ami" {
  type = string
  default = "ami-00a929b66ed6e0de6"
}

variable "instance_type" {
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

variable "zone_id" {
  description = "value"
  default = "Z011506373MMX1KADQX"
}

variable "domain" {
  default = "pavandivi.online"
}

variable "ingress" {
  type = list
  default = [
    {
    description = "Allowing PORT 80 from public"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
    {
    description = "Allowing PORT 443 from public"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
    {
    description = "Allowing PORT 22 from public"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

