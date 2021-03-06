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
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size_gb       = "Standard_A2"
  vm_size_prefix       = "Standard_A2"
  vm_network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_ids      = ["${azurerm_subnet.name_1.id}"]
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address_prefix       = "Standard_A2"
  vm_address_id       = azurerm_virtual_machine.name_0.id
  vm_subnet_label        = "rg"
  vm_address
}

# create resource group
resource "azurerm_subnet" "name_1" {
  name                = "myTFResourceGroup"
  resource_group_name = azure
}

# create cognitive account resource
}

# data block, azurem client config
}

# create bot channels registration resource
}

# resource block called bot channel direct line speech
}

