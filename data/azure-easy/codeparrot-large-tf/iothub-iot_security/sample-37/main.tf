terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# make iothub resourcevariable
resource "azurerm_resource_variable" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# iot security solution resource
resource "azurerm_resource_group_security_solution" "name_3" {
  name                = "iot_security_solution"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.name_1.name}"

  security_rule {
    name                       = "test_rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

