
resource "aws_instance" "roboshop" {
  ami = var.ami

  instance_type = var.instance_type

  tags = {
    Name = var.tags  
  }
}