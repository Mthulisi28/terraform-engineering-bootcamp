resource "local_file" "environment" {
  filename = "${path.root}/${var.environment_name}-${var.application_name}.txt"

  content = <<-EOT
    Environment: ${var.environment_name}
    Application: ${var.application_name}
    Managed by: Terraform
  EOT
}
