terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group.
resource "azurerm_cosmosdb_account" "name_1" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_type        = "Standard_LRS"
}

# data block, azurem client config block
resource "azurerm_container_service" "name_2" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  container_access_type = "private"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id.
resource "azurerm_bot_application" "name_3" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  app_type            = "Web"
  app_service_plan_id = data.azurerm_app_service_plan.scott.id
  app_service_plan_name = "scott"
  app_service_name    = "scott"
}

