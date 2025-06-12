output "aws_region_used" {
  description = "The AWS region in use"
  value       = var.aws_region
}

output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.my_ec2.id
}
