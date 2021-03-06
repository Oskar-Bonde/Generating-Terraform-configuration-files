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
  name     = "myResourceGroup"
  location = "eastus"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_2" {
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = "12345678-1234-1234-1234-123456789012"
  microsoft_app_password = "my-password"

  endpoint {
    name    = "development"
    endpoint_url = "https://mybot.azurewebsites.net/api/messages"
  }

  endpoint {
    name    = "production"
    endpoint_url = "https://mybot.azurewebsites.net/api/messages"
  }

  tags = {
    environment = "production"
  }
}

