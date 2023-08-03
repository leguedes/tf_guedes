output "app_name" {
  description = "This is the unique name of the App Service that was created"
  value       = azurerm_windows_web_app.wp.name
}

output "app_url" {
  description = "This is the URL of the App Service that was created"
  value       = "https://${azurerm_windows_web_app.wp.default_hostname}"
}