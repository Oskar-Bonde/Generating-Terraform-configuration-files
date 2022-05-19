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
  name     = "my-resource-group"
  location = "westus"
}

# make iothub resource
resource "azurerm_iothub" "name_1" {
  name                = "my-iothub"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "S1"
}

# iot security solution resource
resource "azurerm_iothub_security_solution" "name_2" {
  name                = "my-iothub-security-solution"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  iothub_name         = azurerm_iothub.name_1.name
  solution_type       = "AzureSecurityCenterforIoT"
}

