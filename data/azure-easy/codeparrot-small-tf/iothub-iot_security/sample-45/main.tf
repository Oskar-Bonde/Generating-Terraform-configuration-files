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
  sku_name = "Standard_Akamai"
}

# make iothub resource
resource "azurerm_io_gateway_resource" "name_1" {
  name                 = "myTFInternetGateway"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name             = "Standard_Akamai"
  sku_tier             = "Standard"
  tags                 = {
    environment = "test"
  }
}

# iot security solution resource
resource "azurerm_io_gateway_security_group_resource" "name_2" {
  name                 = "myTFInternetGatewaySecurityGroup"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name             = "Standard_Akamai"
  tags                 = {
    environment = "test"
  }
}

