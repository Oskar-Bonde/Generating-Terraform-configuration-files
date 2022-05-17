resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Provider block with features block
resource "azurerm_storage_container" "name_1" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_storage_container
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
}

