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
  name                = "tf_sa"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
}

# data block, azurem client config block
resource "azurerm_resource_group" "name_2" {
  name     = "tf_sa_data"
  location = "westus"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name as cognitive account.
resource "azurerm_cosmosdb_bot_registration" "name_3" {
  name                = "tf_sa_data"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  sku                 = "West US"
}

