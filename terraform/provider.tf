terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95"
    }
  }

  required_version = ">= 1.5"
}

provider "aws" {
  region = "eu-west-1"
}