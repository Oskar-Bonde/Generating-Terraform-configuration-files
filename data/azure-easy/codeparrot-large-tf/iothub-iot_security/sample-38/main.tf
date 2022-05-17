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
  type     = "string"
  location = "westus2"
}

# iot security solution resource
resource "azurerm_resource_group_security_solution" "name_3" {
  name                = "myIotSecurityGroupSolution"
  location            = "westus2"
  resource_group_name = "${azurerm_resource_group.name_1.name}"

  security_solution {
    name                       = "mySecuritySolution"
    priority                   = 100
    action                   = "Allow"
    description                = "Allow IoT Security"
    destination_address_prefix = "*"
    destination_port_range      = "*"
    source_address_prefix      = "*"
    source_port_range          = "*"
    source_address_prefixes      = ["*"]
    destination_address_prefixes = ["0.0.0.0/0"]
  }
}

