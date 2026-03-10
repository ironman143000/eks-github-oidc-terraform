module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name = var.cluster_name

  cluster_version = var.cluster_version

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

}

module "node_group" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "~> 20.0"

  cluster_name         = module.eks.cluster_name
  cluster_service_cidr = module.eks.kubernetes_network_config[0].service_ipv4_cidr

  name       = "github-node-group"
  subnet_ids = module.vpc.private_subnets

  instance_types = ["t3.medium"]
  ami_type       = "AL2023_x86_64_STANDARD"

  desired_size = 2
  min_size     = 1
  max_size     = 3

  capacity_type = "ON_DEMAND"
  create        = true
}