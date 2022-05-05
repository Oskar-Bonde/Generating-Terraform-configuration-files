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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# resource block. Create azurerm image
resource "azurerm_image" "name_1" {
  name                = "myTFImage"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  publisher            = "Microsoft.Azure.Extensions"
  sku                 = "Standard_LRS"
}

