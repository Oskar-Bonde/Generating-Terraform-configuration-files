terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create cognitive account resource group
resource "azurerm_resource_group" "name_2" {
  name     = "myTFCOGNItiveRG"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_subscription" "name_3" {}

# create storage account
resource "azurerm_storage_account" "name_4" {
  name                     = "bosh"
  resource_group_name      = azurerm_resource_group.name_1.name
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_5" {
  name                = "bosh"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus"
  sku                 = "Standard"
  webhook_url          = "https://hooks.azure.com/subscriptions/${azurerm_subscription.current.name}/resourceGroups/${azurerm_resource_group.name_1.name}/providers/Microsoft.Web/sites/${azurerm_webapp_waf_webapp.waf-webapp.name}/deployments/bot-app"
  sku_name             = "Standard"
}

