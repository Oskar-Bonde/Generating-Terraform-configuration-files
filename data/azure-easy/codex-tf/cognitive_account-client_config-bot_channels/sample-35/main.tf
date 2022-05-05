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
  kind                = "CognitiveServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create keyvault resource
resource "azurerm_key_vault" "name_3" {
  name                = "my-keyvault"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
  sku_name            = "standard"
  enabled_for_disk_encryption = true
  enabled_for_deployment = true
  enabled_for_template_deployment = true
  soft_delete_enabled = true
  purge_protection_enabled = true
  access_policy {
    tenant_id = data.azurerm_client_config.name_2.tenant_id
    object_id = data.azurerm_client_config.name_2.object_id
    secret_permissions = [
      "get",
      "list",
      "set",
      "delete",
      "recover",
      "backup",
      "restore",
      "recover",
      "purge",
    ]
    key_permissions = [
      "get",
      "list",
      "create",
      "update",
      "import",
      "delete",
      "recover",
      "backup",
      "restore",
      "recover",
      "purge",
    ]
    certificate_permissions = [
      "get",
      "list",
      "create",
      "update",
      "import",
      "delete",
      "recover",
      "backup",
      "restore",
      "recover",
      "purge",
    ]
    storage_permissions = [
      "get",
      "list",
      "delete",
      "set",
      "update",
      "regeneratekey",
      "setsas",
      "listsas",
      "getsas",
      "deletesas",
    ]
  }
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "bot"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
  endpoint            = "https://my-bot.azurewebsites.net/api/messages"
  developer_app_insights_key = "my-app-insights-key"
  developer_app_insights_api_key = "my-app-insights-api-key"
  developer_app_insights_application_id = "my-app-insights-application-id"
  tags = {
    "tag1" = "value1"
    "tag2" = "value2"
  }
}

