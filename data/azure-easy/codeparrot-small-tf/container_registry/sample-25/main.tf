terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupresource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroupRG"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create container registry resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

