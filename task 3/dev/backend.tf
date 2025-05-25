terraform {
  backend "s3" {
    bucket         = "bucktuck9090buck"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
  }
}