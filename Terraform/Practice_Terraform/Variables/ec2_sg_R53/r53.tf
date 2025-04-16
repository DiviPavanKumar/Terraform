resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = var.ec2_tags
  type    = "A"
  ttl     = 1
  records = [aws_instance.Normal_Creation_OneEC2.private_ip]
}