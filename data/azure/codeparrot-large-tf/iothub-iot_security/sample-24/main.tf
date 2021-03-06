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
  location = "westus"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location to create iothub
resource "azurerm_storage_account" "name_1" {
  name                     = "sa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# iot security solution, assign display name and name. Use iothub id and resrouce group name and location
resource "azurerm_network_security_group" "name_2" {
  name                = "iot"
  location            = "westus"
  resource_group_name = azurerm_resource_group.rg.name
  security_rule {
    name                       = "test-allow-iot"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "test-allow-iot-from-worker"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "6868"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "test-allow-iot-from-worker-and-all"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "test-allow-iot-from-worker-and-all-udp"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
    source_port_range          = "*"
    destination_port_range     = "6868"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "test-allow-iot-from-worker-and-all-icmp"
    priority                   = 104
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "0"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "test-allow-iot-from-worker-and-all-all-tcp"
    priority                   = 105
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "test-allow-iot-from-worker-and-all-udp-icmp"
    priority                   = 106
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Udp"
   
}

