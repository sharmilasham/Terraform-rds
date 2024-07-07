terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = "1.8.5"
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

