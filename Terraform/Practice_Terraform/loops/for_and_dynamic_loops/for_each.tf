resource "aws_instance" "practice" {
    for_each = var.instance_type
  ami           = var.ami
  instance_type = each.value

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "record" {
  for_each = aws_instance.practice
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1

  records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]
}

resource "aws_security_group" "roboshop" {
  name        = "roboshop"
  description = "Allow all inbound and outbound traffic"

  dynamic ingress {
    for_each = var.ingress
    
    content {
    description = ingress.value.description
    from_port   = ingress.value.from_port
    to_port     = ingress.value.to_port
    protocol    = ingress.value.protocol
    cidr_blocks = ingress.value.cidr_blocks
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Allow_22_80_443_ports"
  }
}