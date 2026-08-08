terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }
  }
}

provider "local" {}

resource "local_file" "environment" {
  filename = "${path.module}/${var.project_name}-${var.environment}.txt"

  content = <<-EOT
  Project: ${var.project_name}
  Environment: ${var.environment}
  Owner: ${var.owner}
  Managed by: Terraform
  EOT
}