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
  name     = "outbound"
  location = "westus2"
}

# managed disk resource. Storage account type is standard LRS, create option empty and disk size is 1 gb. Use resource group name and location
# resource group, use name example in location West Europe is used to create 'outbound'
resource "azurerm_public_ip" "name_1" {
  name                = "rg"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

