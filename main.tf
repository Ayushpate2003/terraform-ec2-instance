terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYI6SA7FMTDB6WX6C"
  secret_key = "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"
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-0dee22c13ea7a9a67"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2-instance"
  }
}
