resource "aws_instance" "count" {
  ami           = local.ami_id
  instance_type = local.instance_type
  key_name = local.key_name
  tags = local.tags
}

resource "aws_route53_record" "route53_record" {
  zone_id = var.zone_id
  name    = "${var.instance_name}.${var.domain}}" #interpolation syntax(Mix of two variables)
  type    = "A"
  ttl     = 1
  records = [aws_instance.count.private_ip]
}

resource "aws_key_pair" "deployer_key" {
  key_name   = var.key_name
  public_key = local.public_key_file
}
