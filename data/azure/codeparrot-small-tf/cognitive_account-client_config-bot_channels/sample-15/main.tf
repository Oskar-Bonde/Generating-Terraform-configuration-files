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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource groupvariable
resource "azurerm_resource_group" "name_1" {
  name     = "example-resources"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account resource
resource "azurerm_storage_account" "name_3" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_4" {
  name                = "tf-example-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus2"
  sku                 = "S0"
  identity_type        = "SystemAssigned"
  webhook_secret_id = "webhook-secret"
  webhook_url          = "https://api.weather.gov"
  webhook_secret_secret_type = "Basic"

  # Azure settings
  # azurerm_subscription_id = "REPLACE-WITH-YOUR-SUBSCRIPTION-ID"
  # azurerm_client_id       = "REPLACE-WITH-YOUR-CLIENT-ID"
  # azurerm_client_secret   = "REPLACE-WITH-YOUR-CLIENT-SECRET"
  # azurerm_tenant_id       = "REPLACE-WITH-YOUR-TENANT-ID"
  # azurerm_location        = "westus2"
  # azurerm_resource_group_name = azurerm_resource_group.name_0.name
  # azurerm_app_id            = "REPLACE-WITH-YOUR-APP-ID"
  # azurerm_app_secret        = "REPLACE-WITH-YOUR-APP-SECRET"
  # azurerm_location            = "westus2"
  # azurerm_resource_group_name = azurerm_resource_group.name_0.name
  # azurerm_app_sku              = "REPLACE-WITH-YOUR-SKU"
  # azurerm_app_version         = "REPLACE-WITH-YOUR-APP-VERSION"
  # azurerm_location            = "westus2"
  # azurerm_resource_group_name = azurerm_resource_group.name_0.name
  # azurerm_app_sku              = "REPLACE-WITH-YOUR-SKU"
  # azurerm_app_version         = "REPLACE-WITH-YOUR-APP-VERSION"
  # azurerm_location            = "westus2"
  # azurerm_resource_group_name = azurerm_resource_group.name_0.name
  # azurerm_app_sku              = "REPLACE-WITH-YOUR-SKU"
  # azurerm_location            = "westus2"
  # azurerm_resource_group_name = azurerm_resource_group.name_0.name
  # azure
}

