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

# create resource group and name it example. Set location to westeurope
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_user_rg"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_user_rg_user"
  location = "westus2"
}

