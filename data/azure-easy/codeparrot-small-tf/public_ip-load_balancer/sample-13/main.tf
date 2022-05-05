terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroupVariable"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

# create public ip resourceresource
resource "azurerm_public_ip" "name_1" {
  name                         = "myTFPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "mytfpublicip"
}

# make a lb resource
resource "azurerm_lb" "name_2" {
  name                = "myTFLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  frontend_ip_configuration {
    name                 = "mytffrontendip"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
  frontend_ip_configuration {
    name                 = "mytffrontendip"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

