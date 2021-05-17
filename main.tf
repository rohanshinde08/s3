resource "aws_s3_bucket" "titan" {
  bucket = "titan-manifest-storage-dev-eu-west-2"
  acl    = "private"

  lifecycle_rule {
    enabled = true
    noncurrent_version_transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }
    noncurrent_version_expiration {
      days = 90
    }
  }

  tags = {
    tagName  = "dataclassification"
    tagValue = "restricted"
  }


  versioning {
    enabled = true
    mfa_delete = true
  }
}