resource "aws_instance" "Roboshop" {
  for_each = var.instances
  ami = var.ami_id
    instance_type = each.value
    tags = {
      Name = each.key
    }
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = "Allow all inbound and outbound traffic"

tags = {
  Name = var.sg_tag
}

  ingress {
    description = "Allow all inbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

}

resource "aws_route53_record" "route53_record" {
  for_each = aws_instance.Roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "Web" ? each.value.public_ip : each.value.private_ip ]
}

