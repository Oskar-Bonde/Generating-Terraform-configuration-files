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

# create resource group and name it example. Set location to westeurope
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_lb"
  location = "westus2"
}

# resource block, create automation account. Set location to resource group example and use its name. Set sku name to Basic
resource "azurerm_lb_rule" "name_1" {
  name                = "myTFResourceGroup_lb_rule_tcp"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  port                = 80
  protocol            = "tcp"
  frontend_port           = 80
  backend_port            = 80
  backend_protocol       = "tcp"
  frontend_ip_configuration_name = "myTFResourceGroup_lb_ip_configuration"
  backend_address_pool_id = azurerm_lb_backend_address_pool.myTFResourceGroup_lb_backend_address_pool.id
}

