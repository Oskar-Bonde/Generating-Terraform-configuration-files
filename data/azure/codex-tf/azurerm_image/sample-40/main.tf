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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "West Europe"
}

# resource block. Create image in location west us and assign resource group name. In os disc block, assign os type Linux, generatlized state, and size 30 gb
resource "azurerm_image" "name_1" {
  name                = "example"
  location            = "westus"
  resource_group_name = azurerm_resource_group.name_0.name

  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    blob_uri = "https://example.blob.core.windows.net/system/Microsoft.Compute/Images/example/example-osDisk.2f8d3349-a62b-4fb4-afd4-f8c70a1434c0.vhd"
    size_gb  = 30
    caching  = "None"
  }
}

