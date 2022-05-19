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
  name     = "my-rg"
  location = "West Europe"
}

# create storage account resource
resource "azurerm_storage_account" "name_2" {
  name                     = "mystorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource
resource "azurerm_storage_account" "name_2" {
  name                     = "mystorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true
  is_hns_enabled = true
  network_rules {
    default_action = "Allow"
    ip_rules = ["10.0.0.0/8"]
    virtual_network_subnet_ids = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-rg/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet"]
  }
}

