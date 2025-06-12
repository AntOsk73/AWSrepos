variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-default-bucket"
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_names" {
  description = "A map of bucket names with keys"
  type        = map(string)

  default = {
    bucket1 = "Sami"
    bucket2 = "Onome"
    bucket3 = "Negar"
    bucket4 = "Sean"
    bucket5 = "Antoine"
  }
}
