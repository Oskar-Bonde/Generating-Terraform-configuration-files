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
  name     = "example-resource-group"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name as prefix
resource "azurerm_virtual_network" "name_1" {
  name                = "examplevnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name as prefix
resource "azurerm_subnet" "name_2" {
  name                 = "subnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location as prefix
resource "azurerm_public_ip" "name_3" {
  name                         = "publicip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku                          = "Standard"
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_HubresourceGroup.
resource "azurerm_lb" "name_4" {
  name                = "lb"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "Standard"
  sku_tier            = "Standard"
  frontend_port_start    = 80
  frontend_port_end    = 80
  backend_port            = 80
  backend_address_pool_id = azurerm_lb_backend_address_pool.lb.id
}

