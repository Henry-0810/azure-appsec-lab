resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "logging" {
  source              = "./modules/logging"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}

module "app_service" {
  source                     = "./modules/app-service"
  resource_group_name        = azurerm_resource_group.main.name
  location                   = azurerm_resource_group.main.location
  log_analytics_workspace_id = module.logging.Workspace_id
}
