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
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-app-insights-key"
  developer_app_insights_api_key = "my-app-insights-api-key"
  cognitive_models {
    language = "en"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "es"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "fr"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "it"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "de"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "zh-Hans"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "zh-Hant"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "ja"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "pt-BR"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "pt-PT"
    model_id = "my-model-id"
  }
  cognitive_models {
    language = "ko"
    model_id = "my-
}

