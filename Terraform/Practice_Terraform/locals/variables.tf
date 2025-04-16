variable "ami" {
    type = string
    default = "ami-00a929b66ed6e0de6"
}

variable "instance_name" {
    type = list
    default = [ "MongoDB", "MySQL", "Catalogue", "Redis", "RabbitMQ", "Shipping", "Cart", "Payment", "Web", "User"]
}

variable "zone_id" {
  description = "value"
  default = "Z011506373MMX1KADQX"
}

variable "domain" {
  default = "pavandivi.online"
}