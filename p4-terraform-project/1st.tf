provider "aws" {
  region = "ap-south-1"   # Mumbai region
}

resource "aws_instance" "myec2" {
  ami           = "ami-0f58b397bc5c1f2e8"   # Ubuntu 22.04 in Mumbai
  instance_type = "t3.micro"

  tags = {
    Name = "MyFirstEC2"
  }
}