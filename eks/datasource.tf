data "terraform_remote_state" "network_details" {
  backend = "s3"
  config = {
    bucket = "alco24"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}