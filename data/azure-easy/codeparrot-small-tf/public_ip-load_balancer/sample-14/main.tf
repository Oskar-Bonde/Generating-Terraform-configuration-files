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

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name      = "myTFResourceGroup"
  value     = "myTFResourceGroup"
  depends_on = [azurerm_resource_group.rg]
}

# create public ip resourceresource
resource "azurerm_public_ip" "name_1" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "mytfdomain"
}

# make a lb resourcevariable
resource "azurerm_lb_resource_group" "name_2" {
  name                = "myTFLBResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

