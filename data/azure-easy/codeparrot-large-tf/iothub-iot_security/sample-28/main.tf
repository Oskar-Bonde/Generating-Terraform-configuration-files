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
  name                = "myIotSecurityGroup"
  location            = "westus2"
  security_solution_resource_id = azurerm_resource_group.name_1.id
}

