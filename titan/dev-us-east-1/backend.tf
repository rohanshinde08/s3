terraform {
  backend "s3" {
    bucket = "-dev-us-east-1-terraform-backend"
    key    = "dev-us-east-1.tfstate"
    region = "us-east-1"
  }
}