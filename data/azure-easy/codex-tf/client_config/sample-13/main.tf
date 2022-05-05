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

    secret_permissions = [
      "get",
      "list",
      "set",
      "delete",
      "recover",
      "backup",
      "restore",
    ]

    key_permissions = [
      "create",
      "delete",
      "get",
      "list",
      "update",
      "import",
      "backup",
      "restore",
      "recover",
      "sign",
      "verify",
      "wrapKey",
      "unwrapKey",
    ]

    certificate_permissions = [
      "get",
      "list",
      "delete",
      "create",
      "update",
      "import",
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

