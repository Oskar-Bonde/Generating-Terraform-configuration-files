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
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# resource block. Create azurerm imagevariable
resource "azurerm_image_variable" "name_1" {
  name     = "mytfimagevar"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

