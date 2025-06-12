output "aws_region_used" {
  description = "The AWS region in use"
  value       = var.aws_region
}

/*output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.my_ec2.id
}*/

/*output "instance_public_ip" {
  description = "Public IP for SSH access"
  value       = aws_instance.my_ec2.public_ip
}*/

/*output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.my_sg.id
}*/

output "instance_ids" {
  description = "IDs of created EC2 instances"
  value       = { for name, instance in aws_instance.my_ec2 : name => instance.id }
}

output "instance_public_ips" {
  description = "Public IPs of created EC2 instances"
  value       = { for name, instance in aws_instance.my_ec2 : name => instance.public_ip }
}
