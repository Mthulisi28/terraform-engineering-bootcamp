locals {
  environment_prefix = "${var.application_name}-environment"

  environment_metadata = {
    for environment in var.environments :
    environment => {
      name = environment
      id   = "${environment}-${var.application_name}"
    }
  }
}
