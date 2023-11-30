provider "aws" {
region  = "us-east-1"
}
resource "aws_instance" "web" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
    key_name = "aws-key1"
    tags = {
        Name = "WebServer"
    }
}
# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-tesrrrt-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }
