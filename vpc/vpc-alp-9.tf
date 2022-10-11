terraform {
  required_providers{
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

provider "aws" { }

resource "aws_vpc" "tf-vpc" {
  cidr_block = "18.59.0.0/16"
  tags = {
    "Name" = "TEST-ZEESHAN-AWSCLI"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.tf-vpc.id
  cidr_block = "18.59.0.0/16"
  tags = {
    Name = "SUBNET-TEST-ZEESHAN-AWSCLI"
  }
}