variable "subnet_cidr_block" {
    type= string
}
variable "subnet_availability_zone" {
    type = string
}

variable "subnet_tags" {
    type = map(string)
}

variable "vpc_id" {
    type = string
}