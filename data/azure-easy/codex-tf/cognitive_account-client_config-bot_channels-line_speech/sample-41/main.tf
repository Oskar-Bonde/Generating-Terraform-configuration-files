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
  name     = "test-rg"
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_3" {
  name                = "test-cog"
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
  name                = "test-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "password"
  endpoint            = "https://test-bot.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    luis_app_id       = "00000000-0000-0000-0000-000000000000"
    luis_authoring_key = "00000000-0000-0000-0000-000000000000"
    luis_endpoint_key = "00000000-0000-0000-0000-000000000000"
    qna_knowledgebase_id = "00000000-0000-0000-0000-000000000000"
    qna_endpoint_key = "00000000-0000-0000-0000-000000000000"
  }
  tags = {
    environment = "test"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "test-bot"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  bot_channels_registration_name = azurerm_bot_channels_registration.name_4.name
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    luis_app_id       = "00000000-0000-0000-0000-000000000000"
    luis_authoring_key = "00000000-0000-0000-0000-000000000000"
    luis_endpoint_key = "00000000-0000-0000-0000-000000000000"
    qna_knowledgebase_id = "00000000-0000-0000-0000-000000000000"
    qna_endpoint_key = "00000000-0000-0000-0000-000000000000"
  }
  speech_subscription_key = data.azurerm_cognitive_account.name_3.primary_access_key
  speech_region = data.azurerm_cognitive_account.name_3.location
  speech_context = "test-context"
  speech_endpoint_id = "test-endpoint"
  speech_language = "en-US"
  speech_initial_silence_timeout = "1.00:00:00"
  speech_end_silence_timeout = "1.00:00:00"
  speech_max_dtmf_digits = 2
  speech_profanity_filter = true
  speech_inactivity_timeout = "1.00:00:00"
  speech_max_speech_timeout = "1.00:00:00"
  speech_speech_complete_timeout = "1.00:00:00"
  speech_speech_incomplete_timeout = "1.00:00:00"
  speech_bot_message_activity_timeout = "1.00:00:00"
  speech_recognition_alternatives_confidence_threshold = 0.5
  speech_recognition_endpoint_version =
}

