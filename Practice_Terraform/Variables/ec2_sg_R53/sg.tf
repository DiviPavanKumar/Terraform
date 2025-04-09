resource "aws_security_group" "defaultSGnoVPC" {
  name        = var.aws_security_group                        # Security group name
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
