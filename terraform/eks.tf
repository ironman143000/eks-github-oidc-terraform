module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name = "github-actions-eks"

  cluster_version = "1.33"

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

}