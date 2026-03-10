module "node_group" {

  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  cluster_name = module.eks.cluster_name

  name = "github-node-group"

  subnet_ids = module.vpc.private_subnets

  instance_types = ["t3.medium"]

  ami_type = "AL2023_x86_64_STANDARD"

  desired_size = 2
  min_size     = 1
  max_size     = 3

}