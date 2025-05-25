provider "aws" {
    region = "ap-south-1" 
}

variable "ami" {
    description = "AMI value"
  
}

variable "instance_type" {
    description = "Instance type value"
  
}

resource "aws_instance" "prac3-ins" {
    ami = var.ami
    instance_type = var.instance_type
  
}