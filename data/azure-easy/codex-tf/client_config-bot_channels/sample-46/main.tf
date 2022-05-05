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

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create azure key vault
resource "azurerm_key_vault" "name_2" {
  name                = "kv-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  tenant_id           = data.azurerm_client_config.name_1.tenant_id
  sku_name            = "standard"
  soft_delete_enabled = true
  purge_protection_enabled = true

  access_policy {
    tenant_id = data.azurerm_client_config.name_1.tenant_id
    object_id = data.azurerm_client_config.name_1.object_id

    key_permissions = [
      "create",
      "delete",
      "get",
      "list",
      "update",
      "recover",
      "backup",
      "restore",
      "import",
      "purge",
    ]

    secret_permissions = [
      "delete",
      "get",
      "list",
      "set",
      "recover",
      "backup",
      "restore",
      "purge",
    ]

    certificate_permissions = [
      "delete",
      "get",
      "list",
      "set",
      "create",
      "import",
      "update",
      "managecontacts",
      "getissuers",
      "listissuers",
      "setissuers",
      "deleteissuers",
      "manageissuers",
      "recover",
      "purge",
    ]
  }
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_3" {
  name                = "bot-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "00000000-0000-0000-0000-000000000000"
  microsoft_app_password = "password"
  endpoint            = "https://example.com/api/messages"
  developer_app_insights_key = "00000000-0000-0000-0000-000000000000"
  tags = {
    environment = "dev"
  }
}

