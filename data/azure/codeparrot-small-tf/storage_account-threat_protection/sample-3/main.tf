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

# create resource group and name it atp example. Set location to west europe-west3
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus3"
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
resource "azurerm_storage_account" "name_1" {
  name                     = "mytfsa"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus3"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
resource "azurerm_storage_account" "name_2" {
  name                     = "mytfsaadvanced"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus3"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

