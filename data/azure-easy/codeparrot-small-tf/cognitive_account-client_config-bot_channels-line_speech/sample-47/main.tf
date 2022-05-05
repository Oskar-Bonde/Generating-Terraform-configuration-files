terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource groupresource with network interface
resource "azurerm_resource_group" "name_1" {
  name     = "myTFNetworkInterface"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCognitiveAccount"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# data block, azurem client config
data "azurerm_client_config" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}

# create bot channels registration resource group
resource "azurerm_resource_group" "name_5" {
  name     = "mytfbotchannelregistration"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# resource block called bot channel direct line speech
resource "azurerm_resource_group" "name_6" {
  name     = "mytfbotchannelspeech"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

