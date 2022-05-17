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
  name     = "example-resources"
  location = "westus"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name with a 
# 
# resource "azurerm_virtual_network" "vnet" {
#   name                = "vnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = "West US"
#   resource_group_name = azurerm_resource_group.name_0.name
# }

# a subnet resource in address space 10.0.1.0/24. Use location and resource group name with a 
# 
# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   address_prefix       = "10.0.1.0/24"
#   resource_group_name  = azurerm_resource_group.name_0.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
# }

# a public IP address
resource "azurerm_public_ip" "name_1" {
  name                         = "pip"
  location                     = "West US"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku                          = "Standard"
  domain_name_label            = "azure.dev.azure.net"
  tags {
    environment = "test"
  }
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name with a 
# 
# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   address_prefix       = "10.0.1.0/24"
#   resource_group_name  = azurerm_resource_group.name_0.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
# }

# a public IP address
resource "azurerm_public_ip" "name_2" {
  name                         = "pip6"
  location                     = "West US"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku                          = "Standard"
  domain_name_label            = "azure.dev.azure.net"
  tags {
    environment = "test"
  }
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location 
# 
# resource "azurerm_public_ip" "pip7" {
#   name                         = "pip7"
#   location                     = "West US"
#   resource_group_name          = azurerm_resource_group.name_0.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
# }

# a public IP address
resource "azurerm_public_ip" "name_3" {
  name                         = "pip8"
  location                     = "West US"
  resource_group_name          = azurerm_resource_group.name_0.name
  allocation_method            = "Static"
  sku                          = "Standard"
  domain_name_label            = "azure.dev.azure.net"
  tags {
    environment = "test"
  }
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
}

