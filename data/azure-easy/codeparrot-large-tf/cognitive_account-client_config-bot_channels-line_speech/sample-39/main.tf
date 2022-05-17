terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOGNItiveAccount"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {
  name                = "${var.env_id}-${var.resource_group}"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location            = "${var.region}"
}

# create bot channels registration resource
resource "azurerm_resource_group" "name_4" {
  name     = "myTFBotRegistration"
  location = "westus2"
}

# resource block called bot channel direct line speechvariable
resource "azurerm_
}

