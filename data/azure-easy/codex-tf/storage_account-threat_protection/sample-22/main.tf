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
  name     = "rg-name"
  location = "eastus"
}

# create storage account resource
resource "azurerm_storage_account" "name_1" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource
resource "azurerm_storage_account_network_rules" "name_2" {
  resource_group_name = azurerm_resource_group.name_0.name
  storage_account_name = azurerm_storage_account.name_1.name
  bypass = "Metrics"
  default_action = "Allow"
  ip_rules = ["1.2.3.4", "5.6.7.8"]
  virtual_network_subnet_ids = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Network/virtualNetworks/vnet-name/subnets/subnet-name"]
}

