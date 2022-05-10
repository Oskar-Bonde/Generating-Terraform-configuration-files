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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location West Europe
resource "azurerm_managed_disk" "name_1" {
  name                  = "mydisk"
  managed_disk_type    = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"
  location              = "westus2"
  disk_encryption_set_id = azurerm_managed_disk_encryption_set.ssd.id
}
