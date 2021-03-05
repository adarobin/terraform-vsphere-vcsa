output "administrator_user" {
  value = local.sso_administrator
}

output "root_password" {
  value     = random_password.root_password.result
  sensitive = true
}

output "administrator_password" {
  value     = random_password.administrator_password.result
  sensitive = true
}
