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
  name     = "example"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
# and add to cluster using azurerm.
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.18.0"

  # Create default node pool
  initial_node_count = 1
  node_size = 1

  # Add default node pool with 1 node count and vm size Standard_D2_v2. Make identity
  # SystemAssigned and add to cluster using azurerm.
  node_pool {
    name = "StandardD2"
    vm_size = 1
    os_disk {
      caching = "ReadWrite"
      create_option = "FromImage"
    }
  }

  # Add default node pool with 1 node count and vm size Standard_D2_v2. Make identity
  # SystemAssigned and add to cluster using azurerm.
  node_pool {
    name = "StandardD2"
    vm_size = 1
    os_disk {
      caching = "ReadWrite"
      create_option = "FromImage"
    }
  }
}

