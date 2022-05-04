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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block. Create image in location west us and assign resource group name. In os disc block, assign os type Linux, generatlized state, and size 30 gb
resource "azurerm_image" "name_1" {
  name                = "myTFImage"
  resource_group_name = azurerm_resource_group.name_0.name
  publisher            = "Microsoft.Azure.Extensions"
  sku                 = "Standard"
  version            = "latest"
}

