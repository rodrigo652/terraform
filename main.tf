terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  profile = "default"
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-03aa99ddf5498ceb9"
  instance_type = "t3.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Primeira instancia"
  }
}