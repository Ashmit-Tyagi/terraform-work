resource "aws_instance" "prac-2" {
  instance_type = "t2.micro"
  ami = "ami-0e35ddab05955cf57" 
}

# resource "aws_s3_bucket" "s3" {
#   bucket = "prac-2_terraform_ben"
# }