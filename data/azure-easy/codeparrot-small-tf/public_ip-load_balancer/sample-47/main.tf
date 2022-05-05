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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# create public ip resource group
resource "azurerm_public_ip" "name_1" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "mytflb"
}

# make a lb resource group
resource "azurerm_lb" "name_2" {
  name                = "myTFLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

