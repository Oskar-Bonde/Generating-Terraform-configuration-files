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

# data block, azurem client config
data "azurerm_client_config" "name_2" {
  name = "myTFClientConfig"
}

# create bot channels registration resourcevariable
resource "azurerm_bot_application_registration" "name_3" {
  name                = "myTFBotRegistration"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = data.azurerm_resource_group.name_1.location
  sku                 = "Standard"
  tags                = {
    environment = "Development"
  }
}

