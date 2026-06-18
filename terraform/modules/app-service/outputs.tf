output "app_service_plan_name" {
  value = azurerm_service_plan.appserviceplan.name
}

output "app_service_name" {
  value = azurerm_linux_web_app.webapp.name
}

output "app_service_url" {
  value = "https://${azurerm_linux_web_app.webapp.default_hostname}"
}

output "diagnostic_settings" {
  value = azurerm_monitor_diagnostic_setting.logs
}
