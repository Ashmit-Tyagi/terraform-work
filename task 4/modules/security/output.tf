output "web_sg" {
  value       = aws_security_group.web.id
}

output "app_sg" {
  value       = aws_security_group.app.id
}

