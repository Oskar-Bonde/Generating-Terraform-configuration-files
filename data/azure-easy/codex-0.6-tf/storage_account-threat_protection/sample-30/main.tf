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
  location = "westus"
}

# create storage account resource
resource "azurerm_storage_account" "name_1" {
  name                     = "storagename"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource
resource "azurerm_storage_account_network_rules" "name_2" {
  resource_group_name = azurerm_resource_group.name_0.name
  storage_account_name = azurerm_storage_account.name_1.name
  bypass = ["Metrics", "AzureServices"]
  default_action = "Allow"
  ip_rules = ["10.0.0.0/8", "192.168.0.0/16"]
  virtual_network_subnet_ids = ["/subscriptions/subscription-id/resourceGroups/rg-name/providers/Microsoft.Network/virtualNetworks/vnet-name/subnets/subnet-name"]
}

