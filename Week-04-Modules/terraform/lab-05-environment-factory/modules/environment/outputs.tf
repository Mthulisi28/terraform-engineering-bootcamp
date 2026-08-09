output "environment_id" {
  description = "Standardized environment identifier"
  value       = local.environment_id
}

output "environment_name" {
  description = "Environment name"
  value       = var.environment_name
}

output "owner" {
  description = "Environment owner"
  value       = var.owner
}
