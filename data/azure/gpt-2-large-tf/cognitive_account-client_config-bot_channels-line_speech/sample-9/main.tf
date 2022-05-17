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
  name     = "outbound"
  location = "westus2"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_virtual_network" "name_1" {
  name                = "rg"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name

  tags {
    Name = "rg"
  }
}

# data block, azurem client config
resource "azurerm_subnet" "name_2" {
  name                 = "rg"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.0.0/24"
  address_prefix_type = "INTERNAL"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_subnet" "name_3" {
  name                 = "outbound"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_type = "INTERNAL"
}

# resource block called bot channel direct line speech. Use name and location from bot_channels_registration. For cognitive service location and access key use cognitive account. Assign resource group name
resource "azurerm_network_interface" "name_4" {
  name                = "rg"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "rg"
    subnet_id                     = azurerm_subnet.name_2.id
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = azurerm_public_ip.rg.id
  }
}

