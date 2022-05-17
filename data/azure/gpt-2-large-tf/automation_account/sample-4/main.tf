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
  name                = "myTFResourceGroup_lb_http_ip_address"
  resource_group_name  = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  protocol            = "tcp"
  port                = 80
  protocol_port         = 80
  source_port_range  = "80"
  source_address_prefix = "http://${azurerm_lb.rg.ipv4_address}:443"
}

