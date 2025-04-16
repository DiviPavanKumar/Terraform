output "vpc_id" {
  value = aws_vpc.main.id
}

# output "selected_availability_zones" {
#   value = local.availability_zones

# }

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.database[*].id
}