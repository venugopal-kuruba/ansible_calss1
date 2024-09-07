provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = "<= 1.9.5"
  required_providers {
    aws = {
      version = "<= 6.0.0"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "development-kururba"
    key            = "ansible-kuruba.tfstate"
    region         = "us-east-1"
  }
}
