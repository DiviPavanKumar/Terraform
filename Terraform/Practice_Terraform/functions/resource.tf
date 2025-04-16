resource "aws_instance" "Function" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Functions_Testing"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "my-keypair"             # Logical name for the key in AWS
  public_key = file("keypar.pub")       # Reads the contents of your public key file
}