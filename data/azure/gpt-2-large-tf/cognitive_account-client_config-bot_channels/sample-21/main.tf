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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_lb_rule" "name_1" {
  name                = "myresources"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  protocol            = "HTTP"
  port                = 80
  protocol_port         = 80
  port_name            = "http"
  security_group_ids  = [azurerm_lb_security_group.rg.id]
  type                = "forward"
  protocol                 = "HTTP"
  source_port_range      = "*"
  destination_port_range = "443"
}

# data block, azurem client config
resource "azurerm_lb_listener" "name_2" {
  name                = "myresources"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  protocol            = "HTTP"
  port                = 80
  protocol_port         = 80
  port_name            = "http"
  security_group_ids  = [azurerm_lb_security_group.rg.id]
  type                = "forward"
  protocol                 = "HTTP"
  source_port_range      = "*"
  destination_port_range = "443"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_lb_listener" "name_3" {
  name                = "myresources_lb"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  protocol            = "HTTP"
  port                = 80
  protocol_port         = 80
  port_name            = "http"
  security_group_ids  = [azurerm_lb_security_group.rg.id]
  type                = "forward"
  protocol                 = "HTTP"
  source_port_range      = "*"
  destination_port_range = "443"
}

