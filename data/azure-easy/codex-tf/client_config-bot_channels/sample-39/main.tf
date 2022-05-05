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
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem subscription
data "azurerm_subscription" "name_2" {}

# data block, azurem tenant
data "azurerm_tenant" "name_3" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, az
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_21" {
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"

  microsoft_app_id = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "00000000-0000-0000-0000-000000000000"

  endpoint = "https://mybot.azurewebsites.net/api/messages"

  tags = {
    environment = "Production"
  }
}

