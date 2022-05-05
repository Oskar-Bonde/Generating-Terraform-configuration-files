terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupresource
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroupResourceGroup"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create cognitive account resourcevariable
resource "azurerm_storage_account" "name_3" {
  name                     = "tf-test-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# data block, azurem client configresource
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "tf-test-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_channel_registration" "name_4" {
  name                = "tf-test-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  account_tier           = "Standard"
  account_replication_type = "LRS"
}

# resource block called bot channel direct line speechvariable
resource "azurerm_speech_track" "name_5" {
  name                = "tf-test-speech-track"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  account_tier           = "Standard"
  account_replication_type = "LRS"
}

