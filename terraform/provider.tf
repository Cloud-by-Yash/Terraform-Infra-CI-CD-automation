terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95"
    }
  }


  backend "s3" {
    bucket         = "jerney-app-state-backend"
    key            = "jerney/infrastructure/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "jerney-tf-state-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}