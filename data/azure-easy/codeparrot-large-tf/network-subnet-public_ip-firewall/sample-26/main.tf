terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# a virtual network resource
resource "azurerm_virtual_network" "name_2" {
  name                = "myTFVNet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
}

# create subnet resource
resource "azurerm_subnet" "name_3" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.name_1.name
  virtual_network_name = azurerm_virtual_network.name_2.name
  address_prefix       = "10.0.0.0/24"
}

# resource block of public ip
resource "azurerm_public_ip" "name_4" {
  name                         = "pip"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_1.name
  allocation_method            = "Static"
  domain_name_label            = "piptestvnet"
  tags {
    environment = "test"
  }
}

# resource block with firewall
resource "azurerm_network_security_group" "name_5" {
  name                = "nsg"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name

  security_rule {
    name                       = "allow-ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-icmp"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Icmp"
    source_port_range          = "*"
    destination_port_range     = "1"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-mgmt-ui-access"
    priority                   = 102
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-local"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-ssh-rdp"
    priority                   = 104
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "allow-mgmt-ssh-rdp"
    priority                   = 105
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
}
