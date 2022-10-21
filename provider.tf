provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "terraform-s3-backend-s9"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

}

