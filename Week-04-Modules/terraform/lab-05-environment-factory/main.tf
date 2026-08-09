module "development" {
  source = "./modules/environment"

  environment_name = "development"
  owner            = "mz-uca"
}

module "staging" {
  source = "./modules/environment"

  environment_name = "staging"
  owner            = "mz-uca"
}

module "production" {
  source = "./modules/environment"

  environment_name = "production"
  owner            = "mz-uca"
}
