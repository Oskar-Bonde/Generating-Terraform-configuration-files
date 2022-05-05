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

# create resource group and name it example. Set location to west europe-west2
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to BasicresourceGroup
resource "azurerm_automation_account" "name_1" {
  name                = "tf-automation-account"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name             = "BasicresourceGroup"
}

