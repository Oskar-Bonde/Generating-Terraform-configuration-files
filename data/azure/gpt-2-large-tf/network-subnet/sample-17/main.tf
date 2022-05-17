resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# Provider block with features block
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_count = 3
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_public_ip
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
}

