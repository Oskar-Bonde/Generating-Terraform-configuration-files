resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Provider block with azure provider
resource "azurerm_storage_container" "name_1" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# create resource group
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup_container"
  resource
}

# create cognitive account resource
}

# data block, azurem client config
}

# create bot channels registration resource
}

# resource block called bot channel direct line speech
}

