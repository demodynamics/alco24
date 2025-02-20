# When we using modules and want to output on consloe outputs defined in modules, we must explicitly define them again in the root module.
output "vpc_id" {
  value = module.vpc.vpc_id #Outputing VPC ID on console
}

output "public_subnet" {
  value = module.vpc.public_subnet
}

output "private_subnet" {
  value = module.vpc.private_subnet
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "bucket_data" {
  value = module.bucket.s3_bucket_data
}