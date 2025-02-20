terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}


module "bucket" {
source = "../../../modules/s3"
bucket_name = var.bucket_name
bucket_region = var.bucket_region
bucket_encryption = var.bucket_encryption
bucket_versioning_status = var.bucket_versioning_status
}