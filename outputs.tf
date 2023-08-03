output "app_name" {
  description = "This is the unique name of the App Service that was created"
  value       = azurerm_linux_web_app.webapp.name
}

output "app_url" {
  description = "This is the URL of the App Service that was created"
  value       = "https://${azurerm_linux_web_app.webapp.default_hostname}"
}
