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
  location = "East US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "myCognitiveAccount"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "myBot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  location            = azurerm_resource_group.name_0.location
  microsoft_app_id    = azurerm_cognitive_account.name_1.endpoint
  microsoft_app_password = azurerm_cognitive_account.name_1.primary_access_key
  endpoint            = "https://${azurerm_bot_channels_registration.name_3.name}.azurewebsites.net/api/messages"
  developer_app_insights_key = data.azurerm_client_config.name_2.application_insights_api_key
}

