/*variable "AWS_ACCESS_KEY"{
  type=string
}
variable "AWS_CLIENT_SECRET"{
  type=string
}

variable "bucket_names" {
  type    = list(string)
  default = ["Noninna_bucket-1", "900_bucket-2", "bordel_bucket-3", "eaton_bucket-4", "stjacques_bucket-5"]
}*/

variable "instance_count" {
  default = 5
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Key pair name"
}


