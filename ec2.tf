provider "aws" {
  region = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "web" {
  ami           = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  associate_public_ip_address = true

  tags {
    Name = "HelloWorld"
  }
}
