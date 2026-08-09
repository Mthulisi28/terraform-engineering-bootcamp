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
  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner

  resource_name = "${local.project_name}-${local.environment}"

  metadata = <<-EOT
    Project: ${local.project_name}
    Environment: ${local.environment}
    Owner: ${local.owner}
    Resource: ${local.resource_name}
    Managed by: Terraform
  EOT
}

resource "local_file" "environment" {
  filename = "${path.module}/${local.resource_name}.txt"
  content  = local.metadata
}
