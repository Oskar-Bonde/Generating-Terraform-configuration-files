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
  name     = "rg-terraform-demo"
  location = "East US"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "cog-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create key vault resource
resource "azurerm_key_vault" "name_3" {
  name                = "kv-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
  sku_name            = "standard"
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
    ]
  }
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-terraform-demo.azurewebsites.net/api/messages"
  msi_endpoint        = "https://bot-terraform-demo.azurewebsites.net/api/messages"
  msi_secret          = "msi_secret"
  developer_app_insights_key = "developer_app_insights_key"
  developer_app_insights_api_key = "developer_app_insights_api_key"
  microsoft_app_id    = "microsoft_app_id"
  microsoft_app_password = "microsoft_app_password"
  tags = {
    environment = "Terraform Demo"
  }
}

