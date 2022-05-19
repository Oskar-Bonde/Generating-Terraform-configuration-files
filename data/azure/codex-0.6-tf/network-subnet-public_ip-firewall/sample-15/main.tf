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
  location = "West Europe"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_virtual_network" "name_1" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_3" {
  name                         = "example-ip"
  location                     = azurerm_resource_group.name_0.location
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  idle_timeout_in_minutes      = 30
  sku                          = "Standard"
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
resource "azurerm_firewall" "name_4" {
  name                = "example-firewall"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  ip_configuration {
    name                          = "example-firewall-ipconfig"
    subnet_id                     = azurerm_subnet.name_2.id
    public_ip_address_id          = azurerm_public_ip.name_3.id
  }

  sku {
    name     = "AZFW_Hub"
    tier     = "Standard"
  }
}

