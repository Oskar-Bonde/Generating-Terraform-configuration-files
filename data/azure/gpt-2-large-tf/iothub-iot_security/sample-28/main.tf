terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "rg_resource_group" {
  name     = "myTFResourceGroup_resource_group"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_resource_group_resource_group"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_resource_group" "name_1" {
 
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
}

