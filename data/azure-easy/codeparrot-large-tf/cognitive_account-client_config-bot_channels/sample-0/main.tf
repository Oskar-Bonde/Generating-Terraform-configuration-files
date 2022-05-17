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

# create cognitive account resourceter
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "myTF${var.prefix}${var.account_suffix}"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/user_data.tpl")

  vars = {
    account_name = azurerm_cosmosdb_account.name_2.name
    account_key    = azurerm_cosmosdb_account.name_2.primary_access_key
    container_name = azurerm_resource_group.name_1.name
    container_access_type = "private"
    container_access_id = azurerm_cosmosdb_account.name_2.primary_access_key
    container_password = random_id.password.result
  }
}

# create bot channels registration resourceter
resource "azurerm_bot_application_registration" "name_4" {
  name                = "myTF${var.prefix}${var.bot_channel_suffix}"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  sku                 = "Standard"
  app_service_plan_id = var.app_service_plan_id
  webhook_url          = "https://hooks.azure.com/subscriptions/${var.bot_channel_subscription_id}/resourceGroups/${var.bot_channel_subscription_id}/providers/Microsoft.Web/serverfarms/add"
  webhook_method       = "POST"
  webhook_filters        = var.webhook_filters
  webhook_api_key      = var.webhook_api_key
  webhook_api_secret = var.webhook_api_secret
  webhook_headers       = var.webhook_headers
  webhook_query_string = var.webhook_query_string
  webhook_method_uri   = var.webhook_method_uri
  webhook_authentication_type = "NONE"
}

