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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myresources"
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_network_security_group" "name_1" {
  name                = "myrg"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "myrg"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.rg.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_3" {
  name                         = "myrg"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
  domain_name_label            = "myrg"
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
resource "azurerm_public_ip" "name_4" {
  name                         = "myrg-public"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "dynamic"
  domain_name_label            = "myrg-public"
}

