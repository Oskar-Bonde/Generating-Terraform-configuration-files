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
  name                         = "publicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  public_ip_address_allocation = "static"
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
# azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool
# azurerm_lb_probe resource.azurerm_lb_probe resource.azurerm_lb_probe resource.azurerm_lb_probe resource.azurerm_lb_probe
# azurerm_lb_rule resource.azurerm_lb_rule resource.azurerm_lb_rule resource.azurerm_lb_rule
# azurerm_lb_probe resource.azurerm_lb_probe resource.azurerm_lb_probe

# Create load balancer rule
resource "azurerm_lb_rule" "name_2" {
  name                = "lbRule"
  resource_group_name = azurerm_resource_group.name_0.name
  loadbalancer_id     = azurerm_lb.lb.id
  protocol            = "Tcp"
  frontend_port          = 80
  backend_port           = 80
  frontend_ip_configuration = azurerm_lb.lb.frontend_ip_configuration
}

