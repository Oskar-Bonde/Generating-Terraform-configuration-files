terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure provider

resource "azurerm_virtual_network" "name_0" {
  name                = "myTFResourceGroup-${var.project}-${var.environment}-${var.region}"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.1.0/24"]
}

# create resource group
resource "azurerm_subnet" "name_1" {
  name                 = "myTFResourceGroup-${var.project}-${var.environment}-${var.region}-${var.service_name}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_0.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_count = 3
}

# create storage account resource group
resource "azurerm_storage_account" "name_2" {
  name                     = "myTFResourceGroup-${var.project}-${var.environment}-${var.region}-${var.service_name}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource group
resource "azurerm_storage_container" "name_3" {
  name                  = "myTFResourceGroup-${var.project}-${var.environment}-${var.region}-${var.service_name}"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_2.name
  container_access_type = "private"
}

