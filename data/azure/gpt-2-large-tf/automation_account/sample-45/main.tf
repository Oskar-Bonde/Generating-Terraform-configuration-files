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
  name                = "myTFResourceGroup_lb_rule"
  resource_group_name  = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  port                = 80
  protocol            = "HTTP"
  frontend_port           = 80
  backend_port            = 443
  backend_protocol       = "HTTP"
  frontend_ip_configuration_name = "myTFResourceGroup_lb_ip_configuration_name"
  security_group_ids  = [azurerm_lb_security_group.rg.id]
  depends_on            = [azurerm_lb_rule.name_1]
}

