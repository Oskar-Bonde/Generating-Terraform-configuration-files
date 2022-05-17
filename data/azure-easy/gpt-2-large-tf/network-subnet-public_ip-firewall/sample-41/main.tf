terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure

resource "azurerm_virtual_machine" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  vm_size               = "Standard_A0"
  delete_os_disk_on_termination = true
  storage_type           = "Standard_LRS"
  storage_encrypted         = "true"
  storage_data_disk_type = "Standard_LRS"
  storage_data_disk_size_gb  = "Standard_LRS"
  storage_data_disk_type_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "Standard_LRS"
  storage_data_disk_type_data_disk_gb  = "Standard_LRS"
  storage_data_disk_size_gb = "
}

# create resource group
resource "azurerm_virtual_machine_
}

# a virtual network resource
}

# create subnet resource
}

# resource block of public ip
}

# resource block with firewall
}

