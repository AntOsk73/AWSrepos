/*output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}*/
output "private_key_pem" {
  value     = tls_private_key.ec2_key.private_key_pem
  sensitive = true
}

output "public_ip" {
  value = aws_instance.mcitsami.public_ip
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.ecs_service.name
}

output "task_definition_arn" {
  description = "ARN of the task definition"
  value       = aws_ecs_task_definition.task_def.arn
}

output "ecs_cluster_names" {
  description = "Names of all ECS clusters created"
  value       = { for k, v in module.ecs_clusters : k => v.cluster_name }
}
