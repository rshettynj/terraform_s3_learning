locals {
 my_common_tags = {
  purpose  = "testing"
  owner    = "rshetty"
  priority = 0
  Environment = var.mybucket1
 }
}

resource "aws_s3_bucket" "mybucket1call" {
  bucket = var.mybucket1
  acl    = "private"
  tags   = local.my_common_tags

  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "mybucket2call" {
  bucket = var.mybucket2
  acl    = "private"
  tags   = local.my_common_tags
 
  versioning {
    enabled = false
  }
}
