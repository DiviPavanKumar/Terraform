output "private_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.count.private_ip
}