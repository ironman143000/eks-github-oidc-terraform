variable "cluster_name" {
  default = "github-actions-eks"
}

variable "cluster_version" {
  default = "1.33"
}

variable "service_cidr" {
  description = "Service CIDR for the cluster"
  type        = string
  default     = "10.100.0.0/16" # adjust to your VPC setup
}