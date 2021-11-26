terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "eu-west-2"
}

resource "aws_instance" "linux_server" {
  ami = "ami-008485ca60c91a0f3"
  instance_type = "t2.micro"
  tags = {
    Name = "LinuxServerInstance"
  }
}