output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "app_service_plan_name" {
  value = module.app_service.app_service_plan_name
}

output "app_service_name" {
  value = module.app_service.app_service_name
}

output "app_service_url" {
  value = module.app_service.app_service_url
}

output "log_analytics_workspace_id" {
  value = module.logging.Workspace_id
}

output "diagnostic_settings" {
  value = module.app_service.diagnostic_settings
}
