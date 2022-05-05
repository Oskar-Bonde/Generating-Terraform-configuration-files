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
  resource_group_name = azurerm_resource_group.rg.name
  sku       = "Standard_LRS"
}

# create cognitive account resourceresource
resource "azurerm_resource_group_account" "name_1" {
  name                     = "tf-test-sa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "tf-test-sa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create bot channels registration resource
resource "azurerm_resource_group_subscription" "name_5" {
  resource_group_name  = azurerm_resource_group.rg.name
  subscription_id     = "myTFSubscription"
  account_id             = azurerm_storage_account.name_3.name
}

# resource block called bot channel direct line speechvariable
resource "azurerm_resource_group_subscription" "name_5" {
  resource_group_name  = azurerm_resource_group.rg.name
  subscription_id     = "myTFSubscription"
  account_id             = azurerm_storage_account.name_3.name
}

