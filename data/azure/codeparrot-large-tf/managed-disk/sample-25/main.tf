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
  name     = "example-rg"
  location = "westus"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location to get storage account name.
resource "azurerm_managed_disk" "name_1" {
  name                 = "myTFDisk"
  location             = "westus"
  resource_group_name  = azurerm_resource_group.name_0.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
}

