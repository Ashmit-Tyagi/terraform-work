output "web_tar_group_arn" {
  value       = aws_lb_target_group.web.arn
}

output "app_tar_group_arn" {
  value       = aws_lb_target_group.app.arn
}