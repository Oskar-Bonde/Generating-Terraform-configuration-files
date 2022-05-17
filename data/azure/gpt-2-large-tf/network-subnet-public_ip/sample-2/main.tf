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
  name     = "myTFResourceGroup-user"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup-network-interface"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "myTFResourceGroup-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_network_interface.name_1.name
  address_prefix       = "10.0.0.0/16"
  address_prefix_type = "INTERNAL"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_3" {
  name                         = "myTFResourceGroup-public-ip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup-domain-name"
  domain_name_label_key  = azurerm_virtual_network.rg.name
  tags {
    Name = "myTFResourceGroup-public-ip"
  }
}

