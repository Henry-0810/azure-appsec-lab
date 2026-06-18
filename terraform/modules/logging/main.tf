# Create Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "siem" {
  name                = "SIEM"
  location            = var.location
  resource_group_name = var.resource_group_name
  retention_in_days   = 30
}
