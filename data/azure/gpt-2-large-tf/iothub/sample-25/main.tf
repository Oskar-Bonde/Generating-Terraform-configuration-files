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
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_lb_backend_address_pool" "name_1" {
  name                = "myTFResourceGroup_lb_backend_address_pool"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  protocol            = "HTTP"
  port                = 80
  protocol_port         = 80
  port_name         = "http"
  protocol_port_name = "http"
}

