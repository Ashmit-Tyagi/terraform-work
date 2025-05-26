output "internet_gateway_id" {
  value       = aws_internet_gateway.igw-1.id
}

output "nat_gateway_ids" {
  value       = aws_nat_gateway.igw-1[*].id
}

output "public_route_table_id" {
  value       = aws_route_table.public.id
}

output "private_route_table_ids" {
  value       = aws_route_table.private[*].id
}