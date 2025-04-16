resource "aws_instance" "count" {
  count = 10 # create four similar EC2 instances

  ami           = "ami-00a929b66ed6e0de6"
  instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "MySQL" ? "t3.medium" : "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}
resource "aws_route53_record" "record" {
  count   = length(var.instance_names)

  zone_id = "Z011506373MMX1KADQX"
  name    = var.instance_names[count.index]
  type    = "A"
  ttl     = 1

  records = [aws_instance.count[count.index].private_ip]
}