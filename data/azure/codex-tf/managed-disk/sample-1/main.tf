terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure, empty features block
provider "azurerm" {
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-group"
  location = "West Europe"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location
resource "azurerm_managed_disk" "name_1" {
  name                 = "example-disk"
  location             = azurerm_resource_group.name_0.location
  resource_group_name  = azurerm_resource_group.name_0.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 1
}
