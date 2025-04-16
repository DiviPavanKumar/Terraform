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