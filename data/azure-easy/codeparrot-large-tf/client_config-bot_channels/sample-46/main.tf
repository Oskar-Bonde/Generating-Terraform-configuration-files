terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "myTFStorageAccount"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_4" {
  name                = "myTFBotRegistration"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${azurerm_subscription_id}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/sites/${azurerm_resource_group.name_1.location}/webhooks/webhooks"
  registration_type    = "Webhook"
  webhook_endpoint     = "${azurerm_webhook_endpoint.WebhookEndpoints.id}"
  token_credential_type = "TokenCredential"
}

