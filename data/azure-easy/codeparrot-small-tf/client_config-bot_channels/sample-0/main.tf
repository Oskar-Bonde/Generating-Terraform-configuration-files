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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_registration_service" "name_3" {
  name                = "mytfregistrationservice"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  sku                 = "Standard"
  account_tier        = "Standard"
  account_replication_type = "LRS"

  # create webhook webhook
  webhook_configuration {
    webhook_endpoint = "https://github.com/webhook-service-devops/webhook-service-devops.git"
    webhook_secret   = "my-secret"
  }
}

