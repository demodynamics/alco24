output "bucket" {
  value = module.bucket.s3_bucket_data
}

output "bucket_key" {
  value = {
   key = "dev/s3/terraform.tfstate"
  }
}