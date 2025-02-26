module "vpc" {
  source  = "app.terraform.io/demodynamics/vpc/aws"
  version = "1.0.0"
  project                 = var.project
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
  public_route_per_sub    = var.public_route_per_sub
}

data "terraform_remote_state" "s3" {
  backend = "s3"
  config = {
    bucket = "alco24"
    key    = "dev/s3/terraform.tfstate"
    region = "us-east-1"
  }
}