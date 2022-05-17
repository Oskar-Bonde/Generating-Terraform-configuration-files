terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

resource "azurerm_public_ip" "name_0" {
  name                         = "myTFResourceGroup"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# create resource group
resource "azurerm_network_interface" "name_1" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# data block, azurem client config
resource "azurerm_virtual_machine" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  vm_size               = "Standard_A0"
  network_interface_ids = ["${azurerm_network_interface.name_1.id}"]
  vm_size_gb         = "Standard_A1"
  vm_size_ids           = ["${azurerm_network_interface.name_1.id}"]
  vm_address_pool_id = azurerm_storage_account.name_3.id
}

# create bot channels registration resource
resource "azurerm_storage_account" "name_3" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_replication_type_to_nat = "LRS"
  account_replication_type_nat_type = "LRS"
  tags                = ["myTFResourceGroup"]
  depends_on            = ["azurerm_storage
}

