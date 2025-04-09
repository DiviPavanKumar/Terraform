resource "aws_instance" "practice_locals" {
    count = 10
  ami           = local.ami
  instance_type = local.instance_name[count.index] == "MongoDB" || local.instance_name[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
  tags = {
    Name = local.instance_name[count.index]
  }
}

resource "aws_route53_record" "record" {
  count   = 10

  zone_id = local.zone_id
  name    = "${local.instance_name[count.index]}.${var.domain}" 
  type    = "A"
  ttl     = 1

  records = [aws_instance.practice_locals[count.index].private_ip]
}


