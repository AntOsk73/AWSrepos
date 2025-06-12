/*resource "aws_s3_bucket" "my_bucket" {
  bucket        = var.bucket_name
  force_destroy = true # Allows deletion of the bucket even if it has objects
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket                  = aws_s3_bucket.my_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}*/

resource "aws_s3_bucket" "buckets" {
  for_each    = var.bucket_names
  bucket      = each.value
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  for_each               = aws_s3_bucket.buckets
  bucket                 = each.value.id
  block_public_acls      = true
  block_public_policy    = true
  restrict_public_buckets = true
  ignore_public_acls     = true
}
