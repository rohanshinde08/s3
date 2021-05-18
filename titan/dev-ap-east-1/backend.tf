terraform {
  backend "s3" {
    bucket = "-dev-ap-east-1-terraform-backend"
    key    = "dev-ap-east-1.tfstate"
    region = "ap-east-1"
  }
}