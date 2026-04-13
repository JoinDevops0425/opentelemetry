output "vpc_id" {
  description = "VPC_ID"
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "Public subnet Id's"
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Privtae subnet Id's"
  value = aws_subnet.private[*].id
}
