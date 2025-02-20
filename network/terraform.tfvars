my_vpc_name             = "Demo VPC"
vpc_cidr                = "10.0.0.0/16"
subnets_count           = 2
subnet_prefix           = 24
public_subnets_count    = 1
private_subnets_count   = 1
route_cidr              = "0.0.0.0/0"
az_count                = 2
vpc_dns                 = true
map_public_ip_on_launch = true
single_natgw            = false
natgw_per_az            = false
natgw_per_subnet        = false
sg_ports                = [80, 443]
default_tags = {
  Owner = "Demo Dynamics"
  Environment = "Dev Environment"
  Project = "Demo"

bucket_name = ""
bucket_key = ""
bucket_region = ""
}
