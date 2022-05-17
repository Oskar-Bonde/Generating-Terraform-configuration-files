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
  name     = "outbound"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_virtual_network" "name_1" {
  name                = "rg"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# data block, azurem client config
resource "azurerm_storage_account" "name_2" {
  name                = "rg"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier   = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_storage_container" "name_3" {
  name                  = "rg"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_2.name
  container_access_type = "private"
}

