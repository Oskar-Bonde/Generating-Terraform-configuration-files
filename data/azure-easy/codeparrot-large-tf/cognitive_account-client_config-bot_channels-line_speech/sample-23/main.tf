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
  name     = "myTFRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {
  name                = "${var.subscription_id}"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location            = "${var.location}"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_4" {
  name                = "bot-registration"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location            = "${var.location}"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${var.subscription_id}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/serverfarms/add"
  token_name           = "${var.bot_token_name}"
}

# resource block called bot channel direct line speech
resource "azurerm_bot_application_chat_incoming_webhook" "name_5" {
  name                = "bot-chat-incoming-webhook"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location            = "${var.location}"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${var.subscription_id}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/serverfarms/add"
  token_name           = "${var.bot_token_name}"
}
