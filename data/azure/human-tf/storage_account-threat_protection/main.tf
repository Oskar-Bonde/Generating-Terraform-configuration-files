# Terraform block with azure provider
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
  location = "West Europe"
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
resource "azurerm_storage_account" "name_1" {
  name                = "examplestorage"
  resource_group_name = azurerm_resource_group.name_0.name
  location                 = azurerm_resource_group.name_0.location
  
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
resource "azurerm_advanced_threat_protection" "name_2" {
  target_resource_id = azurerm_storage_account.name_1.id
  enabled            = true
}