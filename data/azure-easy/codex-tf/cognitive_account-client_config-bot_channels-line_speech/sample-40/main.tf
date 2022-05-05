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
  location = "westus"
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

# data block, azurem cognitive account keys
data "azurerm_cognitive_account_keys" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "password"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    name = "my-cognitive-model"
    qna_maker_knowledge_base_id = "00000000-0000-0000-0000-000000000000"
    qna_maker_subscription_key = data.azurerm_cognitive_account_keys.name_3.primary_access_key
    qna_maker_host_name = "https://westus.api.cognitive.microsoft.com"
    dispatch_luis_app_id = "00000000-0000-0000-0000-000000000000"
    dispatch_luis_authoring_key = data.azurerm_cognitive_account_keys.name_3.primary_access_key
    dispatch_luis_endpoint_key = data.azurerm_cognitive_account_keys.name_3.primary_access_key
    dispatch_luis_endpoint = "https://westus.api.cognitive.microsoft.com"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_4.id
  speech_subscription_key = data.azurerm_cognitive_account_keys.name_3.primary_access_key
  speech_region = "westus"
}

