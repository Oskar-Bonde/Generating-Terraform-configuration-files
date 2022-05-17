resource "azurerm_public_ip" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
}

# Provider block with features block
}

# create resource group, use name example in location West Europe
}

# create public ip resource, use static allocation method. Assign resource group name and location
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
}

