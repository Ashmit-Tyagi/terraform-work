variable "vpc_id" {
  type = string
  description = "VPC ID where the security group will be created"
}
variable "ingress_port" {
  type = number
  description = "Port for ingress rules"
  default = 80
}
