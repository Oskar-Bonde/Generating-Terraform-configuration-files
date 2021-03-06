terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "myTFStorageAccount"
  resource_group_name      = azurerm_resource_group.name_2.name
  location                 = data.azurerm_resource_group.name_2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "myTFBotRegistration"
  resource_group_name = azurerm_resource_group.name_2.name
  location            = data.azurerm_resource_group.name_2.location
  sku                 = "Standard"
  webhook_url          = "https://hooks.azurerm.com/providers/Microsoft.Web/hooks"
  token_store_enabled = true
}

# resource block called bot channel direct line speech
resource "azurerm_bot_application_chat_incoming" "name_6" {
  name                = "myTFBotChatIncoming"
  resource_group_name = azurerm_resource_group.name_2.name
  location            = data.azurerm_resource_group.name_2.location
  sku                 = "Standard"
  webhook_url          = "https://hooks.azurerm.com/providers/Microsoft.Web/hooks"
  token_store_enabled = true
}

