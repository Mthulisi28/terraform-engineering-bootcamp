output "environment_file" {
  description = "Path to the environment file"
  value       = local_file.environment.filename
}

output "environment_name" {
  description = "Name of the environment"
  value       = var.environment_name
}
