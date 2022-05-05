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
  location = "West Europe"
}

# create public ip resource, use static allocation method. Assign resource group name and location
resource "azurerm_public_ip" "name_1" {
  name                         = "example"
  location                     = azurerm_resource_group.name_0.location
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  idle_timeout_in_minutes      = 30
  domain_name_label            = "example"
  reverse_fqdn                 = "example.example.com"
  sku                          = "Standard"
  zones                        = ["1", "2", "3"]
  tags                         = {
    environment = "Terraform Demo"
  }
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
resource "azurerm_lb" "name_2" {
  name                = "example"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  frontend_ip_configuration {
    name                 = "example"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

