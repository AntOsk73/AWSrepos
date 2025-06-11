resource "aws_ecs_cluster" "ecs" {
  name = var.cluster_name
}

resource "aws_ecs_capacity_provider" "ecs_provider" {
  name             = var.cluster_name
  cluster_name     = aws_ecs_cluster.ecs.name
  capacity_provider = var.capacity_provider
}
