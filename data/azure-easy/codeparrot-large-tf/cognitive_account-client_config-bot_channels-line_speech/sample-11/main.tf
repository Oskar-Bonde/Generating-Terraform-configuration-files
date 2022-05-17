terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${azurerm_subscription_id}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/sites/${azurerm_resource_group.name_1.name}/Webhooks/${azurerm_bot_application_registration.name_5.name}"

  registration_status_enabled = true

  tags {
    environment = "Development"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_application_chat_incoming_webhook" "name_6" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${azurerm_subscription_id}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/sites/${azurerm_resource_group.name_1.name}/Webhooks/${azurerm_bot_application_chat_incoming_webhook.name_6.name}"

  chat_incoming_webhook_enabled = true

  tags {
    environment = "Development"
  }
}

