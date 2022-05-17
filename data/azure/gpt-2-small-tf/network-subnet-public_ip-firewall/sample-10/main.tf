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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "exampleRG"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name in location westus2
resource "azurerm_virtual_network" "name_1" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
}

