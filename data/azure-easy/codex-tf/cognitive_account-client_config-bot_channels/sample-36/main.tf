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
  location = "eastus"
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

# create a key vault
resource "azurerm_key_vault" "name_3" {
  name                = "kv-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  tenant_id           = data.azurerm_client_config.name_2.tenant_id
  sku_name            = "standard"
  soft_delete_enabled = true
  purge_protection_enabled = true
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "bot-terraform-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  endpoint            = "https://bot-terraform-demo.azurewebsites.net/api/messages"
  msa_app_id          = "f8d8e8c1-f8d8-f8d8-f8d8-f8d8e8c1f8d8"
  developer_app_insights_key = "f8d8e8c1-f8d8-f8d8-f8d8-f8d8e8c1f8d8"
  developer_app_insights_api_key = "f8d8e8c1-f8d8-f8d8-f8d8-f8d8e8c1f8d8"
  developer_app_insights_application_id = "f8d8e8c1-f8d8-f8d8-f8d8-f8d8e8c1f8d8"
  microsoft_app_id = "f8d8e8c1-f8d8-f8d8-f8d8-f8d8e8c1f8d8"
  microsoft_app_password = "f8d8e8c1-f8d8-f8d8-f8d8-f8d8e8c1f8d8"
}

