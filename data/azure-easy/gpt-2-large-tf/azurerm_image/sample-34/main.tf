terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_public_ip" "name_0" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

# create resource group
resource "azurerm_virtual_machine" "name_1" {
  name                = "myTFResourceGroup"
  location           
}

# resource block. Create azurerm image
}

