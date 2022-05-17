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
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "scott_data"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_type        = "Standard_LRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name.
resource "azurerm_bot_application_registration" "name_3" {
  name                = "scott_data"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  app_id              = azurerm_cosmosdb_account.name_1.id
  type                = "Web"
  app_version          = "12.0.0.0"
  auto_registration_enabled = true
}

