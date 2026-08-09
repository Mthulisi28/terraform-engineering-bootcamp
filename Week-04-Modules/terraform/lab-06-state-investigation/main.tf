terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }

  required_version = ">= 1.5.0"
}

resource "local_file" "state_demo" {
  filename = "${path.module}/state-demo.txt"
  content  = "Terraform state investigation"
}

output "file_path" {
  description = "Path of the managed file"
  value       = local_file.state_demo.filename
}
