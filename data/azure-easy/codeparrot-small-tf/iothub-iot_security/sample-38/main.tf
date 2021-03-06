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

# create resource groupresource
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "standard"
  tags = {
    environment = "dev"
  }
}

# make iothub resource
resource "azurerm_io_gateway_resource" "name_1" {
  name                = "iogateway"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "standard"
  location            = "westus2"
  sku_tier            = "Standard"
  tags                = {
    environment = "dev"
  }
}

# iot security solution resourceresource block
resource "azurerm_resource_group_security_group" "name_2" {
  name                = "iot-security-group"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "Standard"
  location            = "westus2"
  tags                = {
    environment = "dev"
  }
}

