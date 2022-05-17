terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# create resource group
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_count = 3
}

# create container registry resourceresource "azurerm_storage_account" "rg" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_replication_type_to_nat = "LRS"
  account_replication_type_nat_type = "LRS"
  account_replication_type_size = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type_type_name = "Standard_LRS"
  account_replication_type_size_nat_type_nat_type_nat_type = "Standard_LRS"
  account_replication_type
}

