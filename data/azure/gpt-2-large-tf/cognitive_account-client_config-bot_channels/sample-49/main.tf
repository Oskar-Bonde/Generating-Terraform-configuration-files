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
resource "azurerm_lb_backend_address_pool" "name_1" {
  name                = "rg-lb-pool"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_id     = azurerm_lb.rg.id
  port                = 80
  protocol            = "HTTP"
  ssl_policy        = "ELBSecurityPolicy"
  port_range_min    = "443"
  port_range_max    = "80"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy"
  load_balancing_scheme = "EXTERNAL"
  load_balancing_scheme_backup = "EXTERNAL"
  load_balancing_scheme_KEY = "EXTERNAL"
  load_balancing_scheme_window = "EXTERNAL"
  load_balancing_scheme_window_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout = "EXTERNAL"
  load_balancing_scheme_window_timeout_timeout_timeout_timeout_timeout_timeout_timeout_timeout_
}

# data block, azurem client config
resource "azurerm_lb_backend_address_pool" "name_2" {
  name                = "rg-lb-pool"
  resource_group_name = azurerm_resource_group.rg.name
  loadbalancer_
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
}

