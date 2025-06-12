variable "AWS_ACCESS_KEY"{
  type=string
}
variable "AWS_CLIENT_SECRET"{
  type=string
}

variable "aws_region" {
  description = "Where do you want to build your AWS stuff?"
  type        = string
  default     = "us-east-1"  # This means if you don't pick, it'll go here.
}




