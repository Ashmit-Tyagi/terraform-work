module "vpc" {  
  source = "../modules/vpc"   
  vpc_cidr = var.vpc_cidr
}

module "subnet" {
  source     = "../modules/subnet"
  vpc_id     = module.vpc.vpc_id
  cidr_block = var.cidr_block
  availability_zone     = var.availability_zone
}

module "igw" {
  source = "../modules/igw"
  vpc_id = module.vpc.vpc_id
}

module "nat" {
  source = "../modules/nat"
  subnet_id = module.subnet.subnet_id
  allocation_id = module.eip.allocation_id
}

module "eip" {
  source = "../modules/eip"
}

module "s3" {
  source      = "../modules/s3"
  bucket_name = "${local.env}-${local.app}-bucket"
}

module "sg" {
  source      = "../modules/sg"
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source            = "../modules/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
}