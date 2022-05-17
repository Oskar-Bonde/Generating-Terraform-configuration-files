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
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
resource "azurerm_storage_account" "name_1" {
  name                = "myTFResourceGroup_lb_storage_account"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup_lb_storage_container"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

