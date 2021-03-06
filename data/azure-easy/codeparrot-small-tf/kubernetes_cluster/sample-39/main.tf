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

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "myTFKubernetesCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"

  #Optional
  kubernetes_version = "1.8.1"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.2"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.3"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.4"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.5"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.6"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.7"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.8"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.9"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.10"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.11"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.12"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.13"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.14"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.15"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.16"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.17"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.18"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.19"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.20"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.21"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version = "1.8.22"

  #Optional
  initial_node_count = 1
  node_count         = 1

  #Optional
  kubernetes_version
}

