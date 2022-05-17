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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create container registry resource group
resource "azurerm_container_registry_resource_group" "name_1" {
  name                     = "myTFResourceGroup"
  location                 = "westus2"
  resource_group_name       = azurerm_resource_group.name_0.name
  container_registry_name = azurerm_container_registry_resource_group.name_1.name
}

