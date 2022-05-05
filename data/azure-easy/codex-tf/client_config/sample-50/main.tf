terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-name"
  location = "eastus"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create aks cluster
resource "azurerm_kubernetes_cluster" "name_2" {
  name                = "aks-name"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  dns_prefix          = "aks-dns-prefix"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  service_principal {
    client_id     = data.azurerm_client_config.name_1.service_principal_client_id
    client_secret = data.azurerm_client_config.name_1.service_principal_client_secret
  }

  tags = {
    environment = "dev"
  }
}

