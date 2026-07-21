terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

variable "student_name" {
  description = "Student name"
  type        = string
  default     = "Ndabezitha"
}

resource "local_file" "profile" {
  filename = "student-profile.txt"

  content = <<EOF
Terraform Student

Name: ${var.student_name}

Academy:
MZ-UCA Cloud Academy

Role:
Cloud Engineer
EOF
}

output "student_file" {
  value = local_file.profile.filename
}