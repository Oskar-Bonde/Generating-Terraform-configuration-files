terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create resource group
resource "azurerm_storage_container"
}

# a virtual network resource
}

# create subnet resource
}

# resource block of public ip
}

# resource block with firewall
}

