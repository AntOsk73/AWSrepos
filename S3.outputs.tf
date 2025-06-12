/*output "bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.arn
}*/

output "bucket_ids" {
  description = "The IDs of the S3 buckets"
  value       = { for k, v in aws_s3_bucket.buckets : k => v.id }
}

output "bucket_arns" {
  description = "The ARNs of the S3 buckets"
  value       = { for k, v in aws_s3_bucket.buckets : k => v.arn }
}
