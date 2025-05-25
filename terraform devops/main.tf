module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = "10.0.0.0/16"
  vpc_tags = {
    "key" = "main"
  }
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = modules.vpc.vpc1.id
  subnet_availability_zone = ""
  subnet_cidr_block = "10.0.0.0/24"
  subnet_tags = {
    "key" = ""
  }
}