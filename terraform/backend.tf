terraform {
  backend "s3" {
    bucket       = "eks-terraform-state-eu-demo"
    key          = "eks/terraform.tfstate"
    region       = "eu-west-1"
    use_lockfile = true
    encrypt      = true
  }
}