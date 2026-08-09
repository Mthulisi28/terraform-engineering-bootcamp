output "development_environment_id" {
  description = "Development environment identifier"
  value       = module.development.environment_id
}

output "staging_environment_id" {
  description = "Staging environment identifier"
  value       = module.staging.environment_id
}

output "production_environment_id" {
  description = "Production environment identifier"
  value       = module.production.environment_id
}
