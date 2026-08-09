output "resource_name" {
  description = "Generated resource name"
  value       = local.resource_name
}

output "file_path" {
  description = "Path of the generated environment file"
  value       = local_file.environment.filename
}

output "environment_summary" {
  description = "Summary of the deployed environment"
  value = {
    project     = var.project_name
    environment = var.environment
    owner       = var.owner
    resource    = local.resource_name
  }
}
