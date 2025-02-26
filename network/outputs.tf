# When we using modules and want to output on consloe outputs defined in modules, we must explicitly define them again in the root module.
output "vpc_id" {
  description = "VPC ID"
  value = module.vpc.vpc_id #Outputing VPC ID on console
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value = module.vpc.internet_gateway_id
}

output "public_subnet_data" {
  description = "Map of Public Subnet IDs List and Public Subnet AZs"
  value = module.vpc.public_subnet
}

output "private_subnet_data" {
  description = "Map of Private Subnet IDs List and Private Subnet AZs"
  value = module.vpc.private_subnet
}

 output "subnet_ids" {
   description = "List of all Subnet IDs"
   value = module.vpc.subnet_ids
 }

 output "s3_details" {
   value = data.terraform_remote_state.s3
 }

