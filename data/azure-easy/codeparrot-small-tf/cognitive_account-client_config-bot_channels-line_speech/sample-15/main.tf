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
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.name_5.name
  tags     = {
    environment = "test"
  }
}

# create cognitive account resource
resource "azurerm_resource_group_account" "name_1" {
  name                     = "testtf"
  resource_group_name      = azurerm_resource_group.name_5.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client configresource
data "azurerm_client_config" "name_2" {}

# create storage account resource
resource "azurerm_storage_account" "name_3" {
  name                     = "testtf"
  resource_group_name      = azurerm_resource_group.name_5.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_resource_group_subscription" "name_4" {
  name                 = "testtf"
  resource_group_name  = azurerm_resource_group.name_5.name
  location             = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  subscription_id     = azurerm_resource_group.name_5.id
}

# resource block called bot channel direct line speech
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

