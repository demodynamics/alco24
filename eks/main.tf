module "eks" {
  source  = "../../../../../modules/terraform-aws-modules/terraform-aws-eks"
  project = var.project
  policy_type = var.policy_type
  role_assumer_type = var.role_assumer_type
  cluster_role_assumer = var.cluster_role_assumer
  cluster_role_permissions_policy = var.cluster_role_permissions_policy
  node_group_role_assumer =  var.node_group_role_assumer
  node_group_role_permissions_policy = var.node_group_role_permissions_policy
  subnet_ids = var.subnet_ids
  node_scale_desired_size = var.node_scale_desired_size 
  node_scale_max_size = var.node_scale_max_size
  node_scale_min_size = var.node_scale_min_size
  node_capacity_type = var.node_capacity_type
  node_instance_type = var.node_instance_type
}


