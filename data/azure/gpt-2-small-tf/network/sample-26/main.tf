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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "exampleRG"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name in location westus2
resource "azurerm_virtual_network" "name_1" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
}

