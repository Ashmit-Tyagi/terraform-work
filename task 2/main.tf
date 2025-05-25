# VPC Module
module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = var.vpc_cidr
}

# Subnet Module
module "subnet" {
  source         = "./modules/subnet"
  vpc_id         = module.vpc.vpc_id
  subnet_cidr    = var.subnet_cidr
  availability_zone = var.availability_zone
}

# EC2 Module
module "ec2" {
  source      = "./modules/ec2"
  ami_id      = var.ami_id
  instance_type = var.instance_type
  subnet_id    = module.subnet.subnet_id
}
