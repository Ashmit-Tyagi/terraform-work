output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "ID of the created Subnet"
  value       = module.subnet.subnet_id
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.ec2.instance_id
}
