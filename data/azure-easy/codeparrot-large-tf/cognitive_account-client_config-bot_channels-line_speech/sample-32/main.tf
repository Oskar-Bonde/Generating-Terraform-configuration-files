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
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = data.azurerm_resource_group.name_1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = data.azurerm_resource_group.name_1.location
  sku                 = "standard"
  webhook_url          = "https://hooks.bosh.com/services/auth/bosh"
  token_uri            = data.azurerm_subscription.name_3.subscription_id
  tenant_id           = data.azurerm_subscription.name_3.tenant_id
  enabled             = true
  webhook_configuration = {
    "webhook_url": "https://hooks.bosh.com/services/auth/bosh"
  }
}

# resource block called bot channel direct line speech
resource "azurerm_bot
}
