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
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-name"
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
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-name.azurewebsites.net/api/messages"
  ms_app_id           = "00000000-0000-0000-0000-000000000000"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    luis_app_id       = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    qna_knowledgebase_id = "00000000-0000-0000-0000-000000000000"
    qna_endpoint_key     = "00000000-0000-0000-0000-000000000000"
    version              = "0.1"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-channel-direct-line-speech-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_id              = azurerm_bot_channels_registration.name_4.id
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    luis_app_id       = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    qna_knowledgebase_id = "00000000-0000-0000-0000-000000000000"
    qna_endpoint_key     = "00000000-0000-0000-0000-000000000000"
    version              = "0.1"
  }
}

