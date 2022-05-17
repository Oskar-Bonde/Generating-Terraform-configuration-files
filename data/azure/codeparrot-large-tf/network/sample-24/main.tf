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
#   resource_group_name = "${azurerm_resource_group.name_0.name}"
# }

# a subnet resource in address space 10.0.1.0/24. Use location and resource group name with a 
# 
# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   address_prefix       = "10.0.1.0/24"
#   resource_group_name  = "${azurerm_resource_group.name_0.name}"
#   virtual_network_name = "${azurerm_virtual_network.vnet.name}"
# }

# a security group resource in address space 10.0.2.0/24. Use location and resource group name with a 
# 
# resource "azurerm_network_security_group" "nsg" {
#   name                = "nsg"
#   location            = "West US"
#   resource_group_name = "${azurerm_resource_group.name_0.name}"
# }

# a security group resource in address space 10.0.3.0/24. Use location and resource group name with a 
# 
# resource "azurerm_network_security_group" "nsg_ssh" {
#   name                = "nsg_ssh"
#   location            = "West US"
#   resource_group_name = "${azurerm_resource_group.name_0.name}"
# }

# a security group resource in address space 10.0.4.0/24. Use location and resource group name with a 
# 
# resource "azurerm_network_security_group" "nsg_http" {
#   name                = "nsg_http"
#   location            = "West US"
#   resource_group_name = "${azurerm_resource_group.name_0.name}"
# }

# a security group resource in address space 10.0.5.0/24. Use location and resource group name with a 
# 
# resource "azurerm_network_security_group" "nsg_https" {
#   name                = "nsg_https"
#   location            = "West US"
#   resource_group_name = "${azurerm_resource_group.name_0.name}"
# }

# a security group resource in address space 10.0.6.0/24. Use location and resource group name with a 
# 
# resource "azurerm_network_security_group" "nsg_ssh_http" {
#   name                = "nsg_ssh_http"
#   location            = "West US"
#   resource_group_name = "${azurerm_resource_group.name_0.name}"
# }

# a security group resource in address space 10.0.7.0/24. Use location and resource group name with a 
# 
# resource "azurerm
}

