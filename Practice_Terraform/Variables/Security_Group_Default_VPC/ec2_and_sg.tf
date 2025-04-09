# --------------------------------------------------------
# Terraform Script to Launch a Single EC2 Instance on AWS
# with an Attached Security Group that Allows All Traffic
# --------------------------------------------------------

# --------------------------------------------------------
# EC2 Instance Resource Configuration
# --------------------------------------------------------

resource "aws_instance" "Normal_Creation_OneEC2" {
  # AMI (Amazon Machine Image) ID used to launch the EC2 instance.
  # This value is provided as a variable for flexibility across regions and OS.
  # Example default: "ami-00a929b66ed6e0de6" (Amazon Linux 2)
  ami = var.ami

  # The EC2 instance type (e.g., t2.micro, t3.small) that defines hardware specs like CPU & RAM.
  # Passed as a variable to make the instance scalable/configurable.
  instance_type = var.instance_type

  # Resource tags help organize and manage AWS resources.
  # The Name tag is passed as a variable for customization.
  tags = {
    Name = var.ec2_tags  # Example: "MyEC2Instance"
  }
}

# --------------------------------------------------------
# Security Group Resource Configuration
# --------------------------------------------------------

resource "aws_security_group" "defaultSGnoVPC" {
  # Name of the security group — defined via variable to allow reuse in different environments.
  name = var.aws_security_group  # Example: "allow_all_sg"

  # Description explaining the purpose of the security group.
  description = "Allow all inbound and outbound traffic"

  # -------------------------------
  # Inbound Rule (Ingress)
  # -------------------------------
  # Allows all TCP traffic from any IP address.
  # cidr_blocks are passed as a variable, commonly ["0.0.0.0/0"] for testing.
  ingress {
    description = "Allow all inbound TCP traffic"
    from_port   = 0                # 0 means "all ports"
    to_port     = 0
    protocol    = "tcp"            # TCP protocol
    cidr_blocks = var.cidr_blocks  # List of allowed IP ranges
  }

  # -------------------------------
  # Outbound Rule (Egress)
  # -------------------------------
  # Allows all outbound traffic using all protocols.
  # Uses the same cidr_blocks variable.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"             # -1 means all protocols
    cidr_blocks = var.cidr_blocks  # Typically ["0.0.0.0/0"]
  }

  # Security group tags to help identify and group in AWS Console.
  tags = {
    Name = var.sg_tags  # Example: "AllowAllSG"
  }
}
