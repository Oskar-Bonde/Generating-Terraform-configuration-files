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
  name     = "rg-test"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# data block, azurem cognitive account keys
data "azurerm_cognitive_account_keys" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-test.azurewebsites.net/api/messages"
  msa_app_id          = data.azurerm_client_config.name_2.object_id
  msa_password        = data.azurerm_client_config.name_2.client_secret
  developer_app_insights_key = "12345678-1234-1234-1234-123456789012"
  developer_app_insights_api_key = "12345678-1234-1234-1234-123456789012"
  developer_app_insights_application_id = "12345678-1234-1234-1234-123456789012"
  cognitive_models {
    qna {
      name = "qna-test"
      subscription_key = data.azurerm_cognitive_account_keys.name_3.key1
      knowledge_base_id = "12345678-1234-1234-1234-123456789012"
    }
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_4.id
  subscription_key    = data.azurerm_cognitive_account_keys.name_3.key1
  region              = "westus"
}

