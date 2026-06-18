# Create Linux App Service Plan
resource "azurerm_service_plan" "appserviceplan" {
  name                = "webapp-asp-appsec-henry0810"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "B1"
}

# Create Linux Web App
resource "azurerm_linux_web_app" "webapp" {
  name                = "webapp-appsec-henry0810"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.appserviceplan.id
  site_config {
    application_stack {
      docker_image_name = "bkimminich/juice-shop:latest"
    }
  }
}

# Create Diagnostic Settings for App
resource "azurerm_monitor_diagnostic_setting" "logs" {
  name                       = "diag-app-law-01"
  target_resource_id         = azurerm_linux_web_app.webapp.id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  enabled_log {
    category_group = "allLogs"
  }
  enabled_metric {
    category = "AllMetrics"
  }
}
