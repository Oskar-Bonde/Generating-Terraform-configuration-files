terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create public ip resource group
resource "azurerm_public_ip" "name_2" {
  name                         = "pipPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_1.name
  allocation_method            = "Static"
  sku                          = "Standard"
  domain_name_label            = "pippublicIP"
  tags {
    environment = "dev"
  }
}

# make a lb resource group
resource "azurerm_lb" "name_3" {
  name                = "myLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  sku                 = "Standard"
}

