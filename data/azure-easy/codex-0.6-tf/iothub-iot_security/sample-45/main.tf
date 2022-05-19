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
  name     = "rg-terraform-demo"
  location = "West Europe"
}

# make iothub resource
resource "azurerm_iothub" "name_1" {
  name                = "iothub-terraform-demo"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "S1"
}

# iot security solution resource
resource "azurerm_iothub_consumer_group" "name_2" {
  name                = "consumer_group"
  resource_group_name = azurerm_resource_group.name_0.name
  iothub_name         = azurerm_iothub.name_1.name
}

