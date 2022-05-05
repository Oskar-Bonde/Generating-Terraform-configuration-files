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
  name     = "my-resource-group"
  location = "westus"
}

# resource block. Create azurerm image 
resource "azurerm_image" "name_1" {
  name                = "my-image"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    blob_uri = "https://mystorage.blob.core.windows.net/system/Microsoft.Compute/Images/my-image/my-image.vhd"
    size_gb  = 30
    caching  = "None"
  }
}

