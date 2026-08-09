module "greeting" {
  source = "./modules/greeting"

  name = "MZ-UCA"
}

output "greeting" {
  description = "Greeting returned by the child module"
  value       = module.greeting.greeting
}
