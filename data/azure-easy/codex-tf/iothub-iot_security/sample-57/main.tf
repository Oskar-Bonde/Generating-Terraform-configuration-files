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
  name     = "rg-test"
  location = "westus"
}

# make iothub resource
resource "azurerm_iothub" "name_1" {
  name                = "iothub-test"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "S1"
}

# iot security solution resource
resource "azurerm_iot_security_solution" "name_2" {
  name                = "solution-test"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  iot_hub_name        = azurerm_iothub.name_1.name
  sku                 = "S1"
}

