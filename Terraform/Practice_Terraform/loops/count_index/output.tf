output "private_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.count[*].private_ip
}