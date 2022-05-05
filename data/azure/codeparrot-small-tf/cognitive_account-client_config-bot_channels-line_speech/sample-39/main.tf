terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account with default storage account type
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_4" {
  name                = "example-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  sku                 = "F0"
  identity_type        = "Microsoft.Azure.Identity"

  # Azure autoscale group
  sku_configuration {
    name                          = "example-channel-registration-sku"
    sku_tier                      = "Standard"
    tier                      = "Standard"
    capacity_scaler              = 1.0
    max_capacity_scaler          = 1.0
    min_capacity_scaler          = 1.0
    default_max_capacity_scaler = 1.0
  }

  # Azure autoscale group
  sku_configuration {
    name                          = "example-channel-registration-sku"
    sku_tier                      = "Standard"
    tier                      = "Standard"
    capacity_scaler              = 1.0
    max_capacity_scaler          = 1.0
    min_capacity_scaler          = 1.0
    default_max_capacity_scaler = 1.0
  }

  # Azure autoscale group
  sku_configuration {
    name                          = "example-channel-registration-sku"
    sku_tier                      = "Standard"
    tier                      = "Standard"
    capacity_scaler              = 1.0
    max_capacity_scaler          = 1.0
    min_capacity_scaler          = 1.0
    default_max_capacity_scaler = 1.0
  }

  # Azure autoscale group
  sku_configuration {
    name                          = "example-channel-registration-sku"
    sku_tier                      = "Standard"
    tier                      = "Standard"
    capacity_scaler              = 1.0
    max_capacity_scaler          = 1.0
    min_capacity_scaler          = 1.0
    default_max_capacity_scaler = 1.0
  }

  # Azure autoscale group
  sku_configuration {
    name                          = "example-channel-registration-sku"
    sku_tier                      = "Standard"
    tier                      = "Standard"
    capacity_scaler              = 1.0
    max_capacity_scaler          = 1.0
    min_capacity_scaler          = 1.0
    default_max_capacity_scaler = 1.0
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
}

