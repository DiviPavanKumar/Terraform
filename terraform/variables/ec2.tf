resource "aws_instance" "tfpractice" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = var.tags
}