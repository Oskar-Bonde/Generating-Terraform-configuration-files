terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

# create public ip resource
resource "azurerm_public_ip" "name_1" {
  name                = "${var.public_ip_name}"
  location            = "${azurerm_resource_group.name_0.location}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"
  allocation_method   = "Static"
  sku                 = "Standard"
}

# make a lb resource
resource "azurerm_lb" "name_2" {
  name                = "${var.lb_name}"
  location            = "${azurerm_resource_group.name_0.location}"
  resource_group_name = "${azurerm_resource_group.name_0.name}"
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = "${azurerm_public_ip.name_1.id}"
  }
}

