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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "westus2"
}

# create public ip resource, use static allocation method. Assign resource group name and location
resource "azurerm_public_ip" "name_1" {
  name                         = "publicip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku {
    name     = "Standard_DS1_v2"
    tier     = "Standard"
    capacity = 1.0
  }
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
# azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool
resource "azurerm_lb" "name_2" {
  name                = "lb"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  frontend_ip_configuration_name = "FE_FE_FE_FE"
}

