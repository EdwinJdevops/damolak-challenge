output "app_url" {
  value = "http://${module.alb.alb_dns_name}"
}

output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ecs_cluster_name" {
  value = module.ecs.cluster_name
}

output "ecs_service_name" {
  value = module.ecs.service_name
}

output "cloudwatch_log_group" {
  value = module.ecs.log_group
}

output "github_actions_role_arn" {
  value = module.iam.github_actions_role_arn
}
