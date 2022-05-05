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
  name     = "rg-demo"
  location = "eastus"
}

# resource block. Create azurerm image 
resource "azurerm_image" "name_1" {
  name                = "image-demo"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  os_disk {
    storage_account_type = "Standard_LRS"
    blob_uri             = "https://storageaccountname.blob.core.windows.net/vhds/osdisk.vhd"
  }
}

