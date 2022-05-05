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
  tags = {
    env = "dev"
  }
}

# create cognitive account resource
resource "azurerm_resource_group_account" "name_1" {
  name                     = "tf-test-azure-rg-${var.env}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_config {
    name = "tf-test-azure-rg-${var.env}"
    tier = "Standard"
  }
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "tf-test-azure-rg-${var.env}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_config {
    name = "tf-test-azure-rg-${var.env}"
    tier = "Standard"
  }
}

# create bot channels registration resource
resource "azurerm_resource_group_subscription" "name_4" {
  name                 = "tf-test-azure-rg-${var.env}"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = "westus2"
  account_tier           = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_config {
    name = "tf-test-azure-rg-${var.env}"
    tier = "Standard"
  }
}

