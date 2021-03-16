output "administrator_user" {
  value       = local.sso_administrator
  description = "The full username of the default VMware SSO Administrator."
}

output "root_password" {
  value       = random_password.root_password.result
  sensitive   = true
  description = "The root password that was generated for the vCenter Server Appliance."
}

output "administrator_password" {
  value       = random_password.administrator_password.result
  sensitive   = true
  description = "The password of the default VMware SSO Administrator."
}
