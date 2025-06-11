/*variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "my-ecs-cluster"
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
  default     = "my-ecs-service"
}

variable "task_family" {
  description = "Task definition family"
  type        = string
  default     = "my-task"
}

variable "image_url" {
  description = "Docker image URL for the task"
  type        = string
  default     = "nginx:latest"
}

variable "container_port" {
  description = "Port exposed by the container"
  type        = number
  default     = 80
}*/

variable "ecs_clusters" {
  description = "List of ECS clusters to create"
  type        = map(object({
    cluster_name = string
    capacity_provider = string
  }))
  default = {
    "cluster1" = { cluster_name = "prod-cluster", capacity_provider = "FARGATE" }
    "cluster2" = { cluster_name = "dev-cluster", capacity_provider = "EC2" }
  }
}
