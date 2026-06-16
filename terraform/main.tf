resource "azurerm_resource_group" "main" {
  name     = "rg-azure-appsec-lab"
  location = "uksouth"
}

module "app_service" {
  source              = "./modules/app-service"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}
