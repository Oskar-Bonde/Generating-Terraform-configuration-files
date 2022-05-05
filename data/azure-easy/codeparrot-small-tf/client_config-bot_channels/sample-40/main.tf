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
  name     = "myTFResourceGroup_test"
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
resource "azurerm_registration_resource" "name_3" {
  name                = "mytfregistrationresource"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier        = "Standard"
  account_replication_type = "LRS"
  webhook_url          = "https://github.com/webhook-service-providers/terraform-provider-azurerm"

  # create webhook webhook
  webhook_configuration {
    webhook_url = "https://github.com/webhook-service-providers/terraform-provider-azurerm"
    webhook_configuration_type = "WebhookConfiguration"
    webhook_secret_key = "my-secret-key"
  }
}

