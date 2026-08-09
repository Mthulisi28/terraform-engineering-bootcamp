terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.9.0"
    }
  }
}

module "environment" {
  for_each = var.environments

  source = "./modules/environment"

  environment_name = each.value
  application_name = var.application_name
}
