terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.9"
    }
  }
}

provider "local" {}

locals {
  resource_name = "${var.project_name}-${var.environment}"

  metadata = <<-EOT
    Project: ${var.project_name}
    Environment: ${var.environment}
    Owner: ${var.owner}
    Resource: ${local.resource_name}
    Managed by: Terraform
  EOT
}

resource "local_file" "environment" {
  filename = "${path.module}/${local.resource_name}.txt"
  content  = local.metadata
}
