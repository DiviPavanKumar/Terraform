resource "aws_instance" "Normal_Creation_OneEC2" {
 # Specify the Amazon Machine Image (AMI) ID
 ami = "ami-00a929b66ed6e0de6"
 
 # Specify the instance type
 instance_type = "t2.micro"
 # Define tags for the instance
 tags = {
   Name = "Sample_EC2"  # Name tag to identify the instance
 }
}

resource "aws_route53_record" "record" {
  zone_id = "Z011506373MMX1KADQX"
  name    = "sample_ec2"
  type    = "A"
  ttl     = 1
  records = [aws_instance.Normal_Creation_OneEC2.private_ip]
}