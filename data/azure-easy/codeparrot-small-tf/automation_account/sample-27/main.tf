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

# create resource groupresource
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# resource block, create automation accountresource
resource "azurerm_resource_group_attachment" "name_1" {
  name                 = "myTFResourceGroup_dev"
  resource_group_name = azurerm_resource_group.rg.name
  location             = "westus2"
  account_name_prefix = "dev"
}

