output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.medusa.dns_name
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.medusa.repository_url
}

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.medusa.name
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.medusa.endpoint
}

output "redis_endpoint" {
  description = "Redis endpoint"
  value       = aws_elasticache_cluster.medusa.cache_nodes[0].address
}
