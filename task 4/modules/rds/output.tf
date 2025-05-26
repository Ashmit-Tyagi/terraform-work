output "rds_endpoint" {
  value       = aws_db_instance.this.endpoint
  sensitive   = true
}

output "rds_user" {
  value       = aws_db_instance.db-ins.user
  sensitive   = true
}