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
  name     = "my-rg"
  location = "East US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# data block, azurem cognitive account key
data "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  cognitive_models {
    dispatch_model_id = "my-dispatch-model-id"
    version           = "0.1"
  }
  cognitive_models {
    luis_app_id       = "my-luis-app-id"
    version           = "0.1"
  }
  cognitive_models {
    qna_knowledge_base_id = "my-qna-knowledge-base-id"
    subscription_key      = data.azurerm_cognitive_account_key.name_3.key1
    host_name             = data.azurerm_cognitive_account.name_1.endpoint
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  bot_resource_group  = azurerm_bot_channels_registration.name_4.resource_group_name
  speech_subscription_key = data.azurerm_cognitive_account_key.name_3.key1
  speech_region       = data.azurerm_client_config.name_2.location
}

