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
  name     = "rg-name"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "cog-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# data block, azurem cognitive account
data "azurerm_cognitive_account" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "00000000-0000-0000-0000-000000000000"
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_application_id = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    qna {
      name = "qna-name"
      subscription_key = data.azurerm_cognitive_account.name_3.primary_access_key
      knowledge_base_id = "00000000-0000-0000-0000-000000000000"
      endpoint_host_name = data.azurerm_cognitive_account.name_3.endpoint
    }
  }
  tags = {
    environment = "dev"
  }
}

