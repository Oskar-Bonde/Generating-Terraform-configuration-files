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
resource "azurerm_cognitive_account" "name_3" {
  name                = "cognitive-account-test"
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
  name                = "bot-channels-registration-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = "app-id"
  microsoft_app_password = "app-password"
  endpoint            = "https://endpoint.com"
  developer_app_insights_key = "app-insights-key"
  cognitive_models {
    dispatch_model_id = "model-id"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "model-id-2"
    version           = "0.2"
  }
  cognitive_models {
    dispatch_model_id = "model-id-3"
    version           = "0.3"
  }
  luis_app_id = azurerm_cognitive_account.name_1.id
  luis_authoring_key = data.azurerm_cognitive_account.name_3.authoring_key
  luis_authoring_region = data.azurerm_cognitive_account.name_3.authoring_region
  luis_endpoint_key = data.azurerm_cognitive_account.name_3.endpoint_key
  luis_endpoint = data.azurerm_cognitive_account.name_3.endpoint
  luis_runtime_endpoint = data.azurerm_cognitive_account.name_3.runtime_endpoint
  luis_runtime_endpoint_key = data.azurerm_cognitive_account.name_3.runtime_endpoint_key
  luis_version_id = "0.1"
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-channel-direct-line-speech-test"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_4.id
  speech_subscription_key = "speech-subscription-key"
  speech_region = "westus"
}

