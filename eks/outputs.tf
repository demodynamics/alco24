output subnet_ids {
  value = data.terraform_remote_state.network_details
}

output "cluster_name" {
  value = module.eks.eks_cluster_name
}