terraform {
  backend "s3" {
    bucket         = "eks-terraform-state-eu-demo"
    key            = "eks/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}