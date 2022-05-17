terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "rg_lb" {
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# create resource group, use name myTFResourceGroup in location westus2
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_lb_lb"
  location = "westus2"
}

