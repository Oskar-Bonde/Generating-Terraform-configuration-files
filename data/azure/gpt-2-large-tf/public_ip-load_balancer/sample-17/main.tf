resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Provider block with features block
}

# create resource group, use name example in location West Europe
}

# create public ip resource, use static allocation method. Assign resource group name and location
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
}

