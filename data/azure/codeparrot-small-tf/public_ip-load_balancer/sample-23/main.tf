terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create public ip resource, use static allocation method. Assign resource group name and location
resource "azurerm_public_ip" "name_1" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku {
    name     = "Standard_Small"
    tier     = "Standard"
    capacity = 2
  }
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
# azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool resource.azurerm_lb_backend_address_pool
# azurerm_lb_rule resource.azurerm_lb_rule resource.azurerm_lb_rule
# azurerm_lb_probe resource.azurerm_lb_probe
# azurerm_lb_probe resource.azurerm_lb_probe

# Create storage account for front end storage
resource "azurerm_storage_account" "name_2" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

