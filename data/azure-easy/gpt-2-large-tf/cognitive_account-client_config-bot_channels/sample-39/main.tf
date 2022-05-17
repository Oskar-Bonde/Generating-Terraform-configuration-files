terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGrouppolicy"
  location = "westus2"
}

# create cognitive account resource
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup-storage-account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

# data block, azurem client config
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup-storage-container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

# create bot channels registration resource

}

