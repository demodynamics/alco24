module "vpc" {
source                  = "../../../modules/network"
my_vpc_name             = var.my_vpc_name
vpc_cidr                = var.vpc_cidr
subnets_count           = var.subnets_count
subnet_prefix           = var.subnet_prefix
public_subnets_count    = var.public_subnets_count
private_subnets_count   = var.private_subnets_count
route_cidr              = var.route_cidr
az_count                = var.az_count
vpc_dns                 = var.vpc_dns
map_public_ip_on_launch = var.map_public_ip_on_launch
single_natgw            = var.single_natgw
natgw_per_az            = var.natgw_per_az
natgw_per_subnet        = var.natgw_per_subnet
sg_ports                = var.sg_ports
default_tags            = var.default_tags
}





