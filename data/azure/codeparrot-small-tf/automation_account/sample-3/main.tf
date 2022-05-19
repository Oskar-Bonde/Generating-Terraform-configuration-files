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

# create resource group and name it example. Set location to westeurope
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_automation_account" "name_1" {
  name                = "tfexampleautomation"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name             = "Basic"
  tags                = {
    environment = "dev"
  }
}

