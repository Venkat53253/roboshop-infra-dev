terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket = "venaws-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    encrypt        = true
    lock_table     = "terraform-lock-table"
  }
}

provider "aws" {
  # Specify the AWS region for resource creation
  region = "us-east-1"
}