output "aws_instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.Normal_Creation_OneEC2.private_ip
}