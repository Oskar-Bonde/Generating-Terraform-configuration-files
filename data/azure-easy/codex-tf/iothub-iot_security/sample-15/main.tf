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
  name     = "myResourceGroup"
  location = "West Europe"
}

# make iothub resource
resource "azurerm_iothub" "name_1" {
  name                = "myiothub"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "S1"
}

# iot security solution resource
resource "azurerm_iothub_security_solution" "name_2" {
  name                = "myiothubsecuritysolution"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  iothub_name         = azurerm_iothub.name_1.name
  solution_name       = "AzureSecurityInsights"
  workspace_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.OperationalInsights/workspaces/myworkspace"
}

