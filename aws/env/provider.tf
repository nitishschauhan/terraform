terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "tf-state-assignment"
    key            = "assignmens"
    region         = "ap-south-1"
    dynamodb_table = "tf-state-assignment-db"
  }
}

provider "aws" {
  region = var.region
}
