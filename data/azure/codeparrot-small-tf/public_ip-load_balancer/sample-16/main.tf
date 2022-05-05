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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create public ip resource, use static allocation method. Assign resource group name and location
resource "azurerm_public_ip" "name_1" {
  name                         = "my-public-ip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku                          = "Standard"
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
# azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool

# Create load balancer rules for frontend ip
resource "azurerm_lb_rule" "name_2" {
  name                        = "my-frontend-lb-rule"
  resource_group_name         = azurerm_resource_group.name_0.name
  loadbalancer_id                = azurerm_lb.frontend.id
  protocol                    = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "my-frontend-ip-configuration"
}

