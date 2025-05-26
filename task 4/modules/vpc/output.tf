output "vpc_id" {
  value       = aws_vpc.vpc1.id
}

output "public_sub" {
  value       = aws_subnet.public-sub[*].id
}

output "private_sub" {
  value       = aws_subnet.private-sub[*].id
}

output "db_sub" {
  value       = aws_subnet.private_db[*].id
}