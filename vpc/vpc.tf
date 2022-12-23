terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = "eu-west-2"
    shared_config_files      = ["~/.aws/config"]
    shared_credentials_files = ["~/.aws/credentials"]
    profile                  = "ahmed"
}

resource "aws_vpc" "tf-vpc" {
    cidr_block = "18.59.0.0/16"

    tags = {
        Name = "terraform-managed-vpc-DONOTTOUCH"
    }
}

resource "aws_subnet" "tf-vpc-subnet" {

    cidr_block = "18.59.1.0/24"
    vpc_id = aws_vpc.tf-vpc.id

    tags = {
      Name = "terraform-subnet-DONOTOTOUCH"
    }
}


