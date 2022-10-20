provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

provider "random" {
  version = "~> 2.2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
