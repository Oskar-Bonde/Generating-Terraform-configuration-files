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

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroupVariable"
  location = "westus2"
  value     = "test"
}

# create cognitive account resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  location_type = "Standard_LRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account resource group
resource "azurerm_storage_account" "name_3" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_registration" "name_4" {
  name                = "mytfregistration"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier           = "Standard"
  account_replication_type = "LRS"
  webhook_url          = "https://github.com/webhook-service-account/webhook"
}

