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

# create resource group and name it example. Set location to west europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_automation_account" "name_1" {
  name                = "tf-automation-${var.location}"
  location            = var.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name             = "Basic"
  location_group_name = azurerm_resource_group.name_0.location_group_name
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}

