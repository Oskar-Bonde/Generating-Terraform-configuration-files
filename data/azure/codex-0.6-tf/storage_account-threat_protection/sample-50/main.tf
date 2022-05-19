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

# create resource group and name it atp example. Set location to west europe
resource "azurerm_resource_group" "name_0" {
  name     = "atp-example"
  location = "westeurope"
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
resource "azurerm_storage_account" "name_1" {
  name                     = "atpexample"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
resource "azurerm_storage_account_network_rules" "name_2" {
  resource_group_name = azurerm_resource_group.name_0.name
  storage_account_name = azurerm_storage_account.name_1.name
  bypass = "AzureServices"
  default_action = "Allow"
  ip_rules = [
    "8.8.8.8",
    "8.8.4.4",
  ]
  virtual_network_subnet_ids = [
    "subnet-id",
  ]
}

