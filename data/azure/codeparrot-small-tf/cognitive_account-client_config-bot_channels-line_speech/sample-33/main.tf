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
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_storage_account" "name_1" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# data block, azurem client config, storage account object
data "azurerm_client_config" "name_2" 
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_3" {
  name                = "example-channel-registration"
  location            = "global"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "Standard"
  account_tier        = "Standard"
  account_replication_type = "GRS"
  subscription_id     = azurerm_resource_group.name_0.id

  tags = {
    environment = "test"
  }
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name and location to West Europe
resource "azurerm_channel_assignment" "name_4" {
  channel_registration_id = azurerm_channel_registration.name_3.id
  name                = "example-channel-assignment"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "Standard"
  account_tier        = "Standard"
  account_replication_type = "GRS"
  subscription_id     = azurerm_resource_group.name_0.id

  tags = {
    environment = "test"
  }
}
