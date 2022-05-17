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
  name     = "example-resources"
  location = "westus"
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy.
resource "azurerm_container_registry" "name_1" {
  name                = "example-registry"
  resource_group_name = azurerm_resource_group.name_0.name
  registry_location   = "westus"
  sku                 = "Premium"
  version              = "latest"
}

