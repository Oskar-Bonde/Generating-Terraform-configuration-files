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

# make managed disk resource
resource "azurerm_managed_disk" "name_1" {
  name                 = "my-osdisk"
  location             = azurerm_resource_group.name_0.location
  resource_group_name  = azurerm_resource_group.name_0.name
  storage_account_type = "Standard_LRS"
  create_option        = "FromImage"
  disk_size_gb         = "30"
  source_image_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/my-resource-group/providers/Microsoft.Compute/images/my-image"
}
