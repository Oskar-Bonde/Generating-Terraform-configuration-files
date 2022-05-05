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
  name     = "example-resource-group"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_storage_account" "name_1" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# data block, azurem client config, and storage account object
resource "azurerm_storage_container" "name_2" {
  name                  = "vhds"
  resource_group_name   = azurerm_resource_group.name_0.name
  storage_account_name  = azurerm_storage_account.name_1.name
  container_access_type = "private"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_channel_registration" "name_3" {
  name                = "tf-channel-registration"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "Standard"
  account_id            = azurerm_storage_account.name_1.id

  # Azure doesn't support multiple accounts yet
  # https://docs.microsoft.com/en-us/azure/storage/storage-premium-storage#create-azure-storage-premium-storage
  # azurerm_storage_account.name_1.location = "West US"
  # azurerm_channel_registration.name_3 = "Terraform"
  # azurerm_channel_registration.name_3 = "Terraform"

  tags = {
    environment = "test"
  }
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
}

