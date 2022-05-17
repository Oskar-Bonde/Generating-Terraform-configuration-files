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
  vm_size_gb         = "Standard_A1"
  network_interface_ids = [azurerm_network_interface.name_1.id]
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_id = azurerm_virtual_machine.name_0.id
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.name_1.id]
  vm_size_gb         = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_id = azurerm_virtual_machine.name_0.id
}

# a virtual network resource
resource "azurerm_network_interface_association" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.name_1.id]
  vm_size_gb         = "Standard_A1"
  vm_size_gb_policy = "Standard_A2"
  vm_size_gb_policy_id = azurerm_virtual_machine.name_0.id
}

# create subnet resource
resource "azurerm_subnet" "name_3" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm
}

# resource block of public ip
}

# resource block with firewall
}

