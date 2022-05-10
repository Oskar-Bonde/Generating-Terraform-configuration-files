# Terraform block with azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "West Europe"
}

# iothub resource block
resource "azurerm_iothub" "name_1" {
  name                = "example-IoTHub"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location

  sku {
    name     = "S1"
    capacity = "1"
  }
}