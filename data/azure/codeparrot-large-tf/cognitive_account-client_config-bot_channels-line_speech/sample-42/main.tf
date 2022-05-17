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

# data block, azurem client config block
resource "azurerm_container_service" "name_2" {
  name                  = "scott"
  location              = "westus"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_service_name  = "vhds"
  container_access_type = "private"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id.
resource "azurerm_bot_application_registration" "name_3" {
  name                = "scott"
  location            = "westus"
  resource_group_name = azurerm_resource_group.rg.name
  app_id              = azurerm_cosmosdb_account.name_1.id
  registration_id     = azurerm_cosmosdb_account.name_1.registration_id
  client_id           = azurerm_cosmosdb_account.name_1.client_id
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name to get registration id.
resource "azurerm_bot_application_registration" "name_4" {
  name                = "example_bot_channel_direct_speech"
  location            = "westus"
  resource_group_name = azurerm_resource_group.rg.name
  app_id              = azurerm_cosmosdb_account.name_1.id
  registration_id     = azurerm_cosmosdb_account.name_1.registration_id
  client_id           = azurerm_cosmosdb_account.name_1.client_id
}

