terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_network_security_group" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.rg.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_subnet" "name_3" {
  name                 = "myTFResourceGroup_policy"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.rg.name
  address_prefix       = "10.0.2.0/24"
}

