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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# kubernetes cluster resourceresource group
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "test"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.18"
  initial_node_count  = 1
  node_count            = 1

  kubernetes_config {
    kubernetes_version = "1.18"
    node_count            = 1
    node_endpoint_type  = "LoadBalancer"
    node_labels {
      app = "hello"
    }
    node_labels {
      app = "good"
    }
  }
}

