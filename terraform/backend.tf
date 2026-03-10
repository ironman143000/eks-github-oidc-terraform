terraform {

 backend "s3" {

   bucket         = "eks-terraform-state-eu-demo"
   key            = "eks/terraform.tfstate"
   region         = "eu-west-1"
   dynamodb_table = "terraform-lock"

 }

 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
   }
 }

}