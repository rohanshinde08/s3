module "s3" {
  source      = "../module/s3"
  bucket_name = var.bucket_name
  aws_region  = var.aws_region
  tags = var.tags
}