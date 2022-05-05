terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create a resource groupresource with storage account
resource "azurerm_resource_group" "name_0" {
  name     = "myTFStorageAccount"
  location = "westus2"
}

