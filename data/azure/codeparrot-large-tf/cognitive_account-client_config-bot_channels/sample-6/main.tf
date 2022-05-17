terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group.
resource "azurerm_cosmosdb_account" "name_1" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channel_registration" "name_3" {
  name                = "bot_channel_registration"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  channel_registration_name = "bot_channel_registration"
  channel_registration_endpoint = "https://management.azure.com/subscriptions/${azurerm_subscription_id}/resourceGroups/${azurerm_resource_group.rg.name}/providers/Microsoft.Web/sites/${azurerm_app_service.app.name}/config/bot_channel_registration"
  certificate_name_prefix = "BotChannelRegistration"
}

