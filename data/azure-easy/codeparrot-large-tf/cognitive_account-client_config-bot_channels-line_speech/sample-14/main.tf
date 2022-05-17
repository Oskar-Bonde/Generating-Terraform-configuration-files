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
  name     = "myTFSRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = data.azurerm_resource_group.name_1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = data.azurerm_resource_group.name_1.location
  sku                 = "Standard"
  webhook_url          = "https://hooks.bosh.com/services/auth/bosh"
  registration_type    = "Webhook"
  registration_status    = "Registered"
  webhook_filters {
    name = "webhook_url"
    values = ["https://hooks.bosh.com/services/auth/bosh"]
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot_application_chat_incoming_webhook" "name_6" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = data.azurerm_resource_group.name_1.location
  sku                 = "Standard"
  webhook_url          = "https://hooks.bosh.com/services/auth/bosh"
  chat_channel_id      = "chat_channel_id"
  enable_speech_adaptation = true
  enable_record_interaction = true
  enable_recommendation = true
  enable_speech_adaptation_logging = true
  enable_recommendation_logging = true
  enable_chat_assistant = true
  enable_chat_assistant_message_notifications = true
  enable_chat_assistant_media_notifications = true
  enable_chat_assistant_invoker = true
  enable_chat_assistant_reminder = true
  enable_chat_assistant_role_notification = true
  enable_chat_assistant_user_management = true
  enable_chat_assistant_user_management_invoker = true
  enable_chat_assistant_user_management_invoker_role_notification = true
  enable_chat_assistant_user_management_invoker_role = true
  enable_chat_assistant_user_management_invoker_role_notification = true
  enable_chat_assistant_user_management_chat_assistant_invoker_role = true
  enable_chat_assistant_user_management_chat_assistant_invoker_role_notification = true
  enable_chat_assistant_user_management_chat_assistant_invoker_role_notification = true
  enable_chat_assistant_user_management_chat_assistant_role_notification = true
  enable_chat_assistant_user_management_chat_assistant_invoker_role_notification =
}

