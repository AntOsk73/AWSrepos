resource "aws_s3_bucket" "buckets" {
  count  = 5
  bucket = "bucket-${count.index + 1}"
}
