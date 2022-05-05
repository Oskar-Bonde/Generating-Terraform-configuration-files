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
  location = "eastus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-account-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create a key vault
resource "azurerm_key_vault" "name_3" {
  name                = "key-vault-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
  sku_name            = "standard"
  soft_delete_enabled = true
  purge_protection_enabled = true

  access_policy {
    tenant_id = data.azurerm_client_config.name_2.tenant_id
    object_id = data.azurerm_client_config.name_2.object_id

    key_permissions = [
      "backup",
      "create",
      "decrypt",
      "delete",
      "encrypt",
      "get",
      "import",
      "list",
      "purge",
      "recover",
      "restore",
      "sign",
      "unwrapKey",
      "update",
      "verify",
      "wrapKey",
    ]

    secret_permissions = [
      "backup",
      "delete",
      "get",
      "list",
      "purge",
      "recover",
      "restore",
      "set",
    ]
  }
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-channels-registration-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "microsoft-app-id"
  microsoft_app_password = "microsoft-app-password"
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "bot-channel-direct-line-speech-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_channels_registration_id = azurerm_bot_channels_registration.name_4.id
  cognitive_models {
    model_id   = "model-id"
    version_id = "version-id"
  }
  speech_subscription_key = "speech-subscription-key"
  speech_region           = "speech-region"
  speech_endpoint_id      = "speech-endpoint-id"
  speech_authorization_token = "speech-authorization-token"
}

