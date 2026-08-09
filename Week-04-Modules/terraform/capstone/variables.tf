variable "application_name" {
  description = "Application name used by the environment factory"
  type        = string
}

variable "environments" {
  description = "Environments to provision"
  type        = set(string)
}
