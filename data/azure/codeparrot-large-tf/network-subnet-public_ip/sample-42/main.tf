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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name to get
# the IP address of the virtual network
resource "azurerm_virtual_network" "name_1" {
  name                = "vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus"
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "subnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_3" {
  name                         = "pip"
  location                     = "West US"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  domain_name_label            = "azure.dev.coreos.systems"
  tags {
    environment = "test"
  }
}

