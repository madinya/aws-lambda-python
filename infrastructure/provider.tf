terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9.0"
    }
  }
  backend "s3" {
    bucket  = "tfstate-lambda-rmc"
    key     = "terraform/state/birthday_lambda.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region     = var.REGION
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY
}
