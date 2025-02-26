/*
# This need to be run after creating S3 bucket, which would migrate terraform.tfstate (move local terraform.tfstate to S3 bucket) from local to S3 bucket.
So Before creating S3 Bucket, this file need to commented. Atfer creating S3 Bucket need to uncomment this file, and then run 
terraform init and terraform apply commands to migrate terraform.tfstate to S3 Bucket, creating terraform.tfstate file into new created S3 Bucket. 
After that we can delete local .tfstae file and .tfstate.backup file.
*/

terraform {
  backend "s3" {
    bucket = "alco24"
    key    = "dev/s3/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}