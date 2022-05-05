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
  location = "West US"
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
  microsoft_app_password = "00000000-0000-0000-0000-000000000000"
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_application_id = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    cognitive_models {
      model_id = "00000000-0000-0000-0000-000000000000"
      version = "0.1"
    }
  }
  cognitive_services {
    account_id = azurerm_cognitive_account.name_1.id
    key        = data.azurerm_cognitive_account_keys.name_3.keys[0].key
    location   = azurerm_resource_group.name_0.location
    kind       = "TextAnalytics"
  }
  tags = {
    environment = "Production"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel-direct-line-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_4.id
  kind                = "sdk"
  endpoint            = "https://my-bot-channel-direct-line-speech.azurewebsites.net/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_api_key = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_application_id = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    cognitive_models {
      model_id = "00000000-0000-0000-0000-000000000000"
      version = "0.1"
    }
  }
  cognitive_services {
    account_id = azurerm_cognitive_account.name_1.id
    key        = data.azurerm_cognitive_account_keys.name_3.keys[0].key
    location   = azurerm_resource_group.name_0.location
    kind       = "TextAnalytics"
  }
  tags = {
    environment = "Production"
  }
}

