output "vpc_id"{
    description= "vpc id details:"
    value = module.vpc.vpc_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}
output "cluster_iam_role_arn" {
  description = "cluster iam role arn:"
  value       = module.eks.cluster_iam_role_arn
}
output "cluster_iam_role_name" {
  description = "cluster iam role name:"
  value       = module.eks.cluster_iam_role_name
}
