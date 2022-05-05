terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-name"
  location = "eastus"
}

# resource block. Create azurerm image 
resource "azurerm_image" "name_1" {
  name                = "image-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    blob_uri = "https://storage-account-name.blob.core.windows.net/vhds/os-disk-name.vhd"
    size_gb  = "30"
  }
}

