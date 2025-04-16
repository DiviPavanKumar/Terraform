variable "instance_names" {
  description = "Name of the instance"
  type        = list
  default     = [ "MongoDB", "Cart", "Catalogue", "User", "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web" ]
}