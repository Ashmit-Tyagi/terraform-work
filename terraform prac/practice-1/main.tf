provider "aws" {
    region = "ap-south-1"
  
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value = "i-02f38a817945e1d4f"
    instance_type_value = "t2.micro"
}