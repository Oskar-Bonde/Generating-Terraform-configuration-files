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
resource "azurerm_resource_group" "name_1" {
  name     = "example-resources"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "example-storage"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_resource_group" "name_4" {
  name     = "example-channel-registration"
  location = "westus2"

  # azurerm_resource_group.name_0.location = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  sku {
    name     = "Standard_DS1_v2"
    tier     = "Standard"
    capacity = 1
  }

  # azurerm_resource_group.name_0.location = azurerm_resource_group.name_0.location
  # azurerm_resource_group.name_0.name = azurerm_resource_group.name_0.name
  # azurerm_resource_group.name_0.location = azurerm_resource_group.name_0.location

  # azurerm_resource_group.name_0.sku.name = "Standard_DS2_v2"
  # azurerm_resource_group.name_0.sku.location = azurerm_resource_group.name_0.location
  # azurerm_resource_group.name_0.sku.name = "Standard_DS3_v2"
  # azurerm_resource_group.name_0.sku.location = azurerm_resource_group.name_0.location

  # azurerm_resource_group.name_0.sku.sku_name = "Standard_DS4_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS5_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS6_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS7_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS8_v2"

  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS9_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS10_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS11_v2"
  # azurerm_resource_group.name_0.sku.sku_sku = "Standard_DS12_v2"

  #
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
}

