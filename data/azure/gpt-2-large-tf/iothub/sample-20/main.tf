terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "rg_user" {
  name     = "myTFResourceGroup_user"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user_rg"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_user_rg_http"
  location = "westus2"
}

