terraform {
  backend "s3" {
    bucket = "-dev-eu-west-2-terraform-backend"
    key    = "dev-eu-west-2.tfstate"
    region = "eu-west-2"
  }
}