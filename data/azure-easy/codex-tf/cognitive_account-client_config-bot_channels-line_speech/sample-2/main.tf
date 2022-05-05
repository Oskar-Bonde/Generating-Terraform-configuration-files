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
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
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
  sku_name            = "F0"
  microsoft_app_id    = "my-microsoft-app-id"
  cognitive_models    = [
    {
      name = "my-cognitive-model"
      version = "0.1"
      cognitive_model_id = "my-cognitive-model-id"
    }
  ]
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-developer-app-insights-key"
  developer_app_insights_api_key = "my-developer-app-insights-api-key"
  developer_app_insights_application_id = "my-developer-app-insights-application-id"
  luis_app_id         = "my-luis-app-id"
  luis_authoring_key  = "my-luis-authoring-key"
  luis_endpoint_key   = "my-luis-endpoint-key"
  luis_endpoint       = "https://westus.api.cognitive.microsoft.com"
  microsoft_app_password = "my-microsoft-app-password"
  tags                = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_4.id
  cognitive_models    = [
    {
      name = "my-cognitive-model"
      version = "0.1"
      cognitive_model_id = "my-cognitive-model-id"
    }
  ]
  endpoint            = "https://my-bot-channel-direct-line-speech.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-developer-app-insights-key"
  developer_app_insights_api_key = "my-developer-app-insights-api-key"
  developer_app_insights_application_id = "my-developer-app-insights-application-id"
  luis_app_id         = "my-luis-app-id"
  luis_authoring_key  = "my-luis-authoring-key"
  luis_endpoint_key   = "my-luis-endpoint-key"
  luis_endpoint       = "https://westus.api.cognitive.microsoft.com"
  microsoft_app_password = "my-microsoft-app-password"
  tags                = {
    environment = "Production"
  }
}

