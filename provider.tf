terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
  aws_access_key_id=""
  aws_secret_access_key=""
}