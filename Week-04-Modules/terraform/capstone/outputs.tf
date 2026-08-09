output "environment_files" {
  description = "Environment file paths created by the factory"

  value = {
    for environment, module_instance in module.environment :
    environment => module_instance.environment_file
  }
}

output "environment_names" {
  description = "Environment names created by the factory"

  value = {
    for environment, module_instance in module.environment :
    environment => module_instance.environment_name
  }
}
