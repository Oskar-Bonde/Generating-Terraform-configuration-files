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
  name     = "my-resource-group"
  location = "West US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
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
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  endpoint            = "https://my-bot-endpoint.com/api/messages"
  developer_app_insights_key = "my-app-insights-key"
  cognitive_models {
    luis_app_id = "my-luis-app-id"
    luis_authoring_key = "my-luis-authoring-key"
    luis_authoring_region = "westus"
    luis_endpoint_key = "my-luis-endpoint-key"
    qna_knowledgebase_id = "my-qna-knowledgebase-id"
    qna_endpoint_key = "my-qna-endpoint-key"
    dispatch_app_id = "my-dispatch-app-id"
    dispatch_authoring_key = "my-dispatch-authoring-key"
    dispatch_authoring_region = "westus"
    dispatch_endpoint_key = "my-dispatch-endpoint-key"
  }
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_directline_speech" "name_5" {
  name                = "my-bot-channel-directline-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_4.id
  cognitive_services_account_id = azurerm_cognitive_account.name_1.id
  cognitive_services_account_key = data.azurerm_cognitive_account_keys.name_3.keys[0].value
  cognitive_services_account_region = azurerm_cognitive_account.name_1.location
  speech_subscription_key = data.azurerm_client_config.name_2.subscription_id
  speech_region = azurerm_cognitive_account.name_1.location
}

