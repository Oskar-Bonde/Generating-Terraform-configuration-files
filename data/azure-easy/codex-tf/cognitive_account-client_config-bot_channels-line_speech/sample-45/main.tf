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
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {

}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_directline_speech" "name_5" {
  name                = "my-bot-channel-directline-speech"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  bot_resource_group  = azurerm_resource_group.name_0.name
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
    dispatch_model_id = "00000000-0000-0000-0000-000000000000"
    version           = "0.1"
  }
  cognitive_models {
   
}

