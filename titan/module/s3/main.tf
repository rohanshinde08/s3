resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = "private"
  

  lifecycle_rule {
    enabled = true
    noncurrent_version_transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
    noncurrent_version_expiration {
      days = 40
    }
  }

  tags = var.tags


  versioning {
    enabled    = true
    mfa_delete = false
  }
}