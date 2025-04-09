resource "aws_instance" "Normal_Creation_OneEC2" {
 # Specify the Amazon Machine Image (AMI) ID
for_each = var.instance
 ami = var.ami

 # Specify the instance type
 instance_type = each.value
 # Define tags for the instance
 tags = {
   Name = each.key  # Name tag to identify the instance
 }
}

resource "aws_route53_record" "record" {
    for_each = aws_instance.Normal_Creation_OneEC2
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}" # Construct the DNS name using instance name and domain
  type    = "A"
  ttl     = 1
  records = [ each.key == "Web" ? each.value.public_ip : each.value.private_ip ] # Use the private IP of the instance for DNS resolution
}

resource "aws_security_group" "defaultSGnoVPC" {
  name        = var.sg_tags                      # Security group name
  description = "Allow all inbound and outbound traffic"

  # Inbound rule - allows all TCP traffic from any IP address
  ingress {
    description = "Allow all inbound traffic"
    from_port   = 0                                # Allows all ports (0 means any)
    to_port     = 0
    protocol    = "tcp"                            # TCP protocol only
    cidr_blocks = var.cidr_blocks                  # Open to all IP addresses (use cautiously
  }

  # Outbound rule - allows all traffic using all protocols
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"                             # -1 means all protocols
    cidr_blocks = var.cidr_blocks                 # Open to all IPs for outbound
  }

  tags = {
    Name = var.sg_tags                     # Tag for the security group
  }
}