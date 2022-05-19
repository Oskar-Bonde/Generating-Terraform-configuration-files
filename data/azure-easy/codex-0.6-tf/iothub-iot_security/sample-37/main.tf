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
  name     = "rg-terraform"
  location = "eastus"
}

# make iothub resource
resource "azurerm_iothub" "name_1" {
  name                = "iothub-terraform"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "F1"
}

# iot security solution resource
resource "azurerm_iothub_security_solution" "name_2" {
  resource_group_name = azurerm_resource_group.name_0.name
  iothub_name         = azurerm_iothub.name_1.name
  location            = azurerm_resource_group.name_0.location
  solution_name       = "iothub-security-solution"
  workspace_resource_id = azurerm_log_analytics_workspace.log-analytics-workspace.id
}

