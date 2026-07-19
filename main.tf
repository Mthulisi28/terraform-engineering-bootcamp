terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}


provider "local" {}


resource "local_file" "welcome" {

  filename = "welcome.txt"

  content = <<EOF
Welcome to MZ-UCA Terraform Engineering Bootcamp

MZ-UCA Cloud Academy

Instructor:
Mthulisi Zulu

Cloud Governance Architect

EOF

}