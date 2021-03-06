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
  name     = "myresources"
  location = "westus2"
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy
resource "azurerm_lb_listener" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.lb.id
  port                = 80
  protocol            = "HTTP"
  ssl_policy        = "ELBSecurityPolicy"
  port_range_min    = "443"
  port_range_max    = "80"
  ssl_policy        = "ELBSecurityPolicy"
  protocol            = "HTTPS"
  ssl_policy_name = azurerm_lb_target_group.lb_target_group.name
}

