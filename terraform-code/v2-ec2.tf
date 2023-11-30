provider "aws" {
region  = "us-east-1"
}
resource "aws_instance" "web" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
    key_name = "aws-key1"
    security_groups = [ "demo-SG" ]
    tags = {
        Name = "WebServer"
    }
}

resource "aws_security_group" "demo-SG" {
  name        = "demo-SG"
  description = "Allow SSH Traffic"

  ingress {
    description      = "Allow SSH Traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Demo-SG"
  }
}
# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-tesrrrt-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }
