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
  location = "westus2"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location
resource "azurerm_managed_disk" "name_1" {
  name                 = "disk1"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.name_0.name
  disk_size_gb         = "1"
  create_option        = "Empty"
  lun                 = 0
}

