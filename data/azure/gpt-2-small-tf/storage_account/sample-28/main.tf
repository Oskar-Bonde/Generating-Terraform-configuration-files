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
  name     = "myTFRG"
  location = "west europe"
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRSresourceGroupName
resource "azurerm_storage_account" "name_1" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
}

