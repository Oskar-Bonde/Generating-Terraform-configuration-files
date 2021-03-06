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
  vm_size_gb       = "Standard_A1"
  vm_size_type         = "Standard_A2"
  network_interface_ids = [azurerm_network_interface.name_1.id]
  vm_size_gb       = "Standard_A3"
  vm_size_type         = "Standard_A4"
  vm_size_gb       = "Standard_A5"
  vm_size_type         = "Standard_A6"
  vm_size_gb       = "Standard_A7"
  vm_size_type         = "Standard_A8"
  vm_size_gb       = "Standard_A9"
  vm_size_type         = "Standard_A10"
  vm_size_gb       = "Standard_A11"
  vm_size_type         = "Standard_A12"
  vm_size_gb       = "Standard_A1211"
  vm_size_type         = "Standard_A121212"
  vm_size_gb       = "Standard_A1213"
  vm_size_type         = "Standard_A1213"
  vm_size_gb       = "Standard_A1214"
  vm_size_type         = "Standard_A1214"
  vm_size_gb       = "Standard_A1215"
  vm_size_type         = "Standard_A1215"
  vm_size_gb       = "Standard_A1213"
  vm_size_type         = "Standard_A1214"
  vm_size_gb       = "Standard_A121513"
  vm_size_type         = "Standard_A1214"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121513"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121513"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_A121514"
  vm_size_type         = "Standard_A121514"
  vm_size_gb       = "Standard_
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus
}

# a virtual network resource
}

# create subnet resource
}

# resource block of public ip
}

