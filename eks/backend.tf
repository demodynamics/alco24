terraform {
  backend "s3" {
    bucket = "alco24"
    key    = "dev/eks/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}