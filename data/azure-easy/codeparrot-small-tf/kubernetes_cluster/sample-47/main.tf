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

  # kubernetes configuration
  kubernetes_config {
    namespace = "default"

    kubernetes_version = "1.8.0"

    master_ipv4_cidr_block = "172.16.0.0/28"
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
  }

  # Create kubernetes cluster node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_cluster.html
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_cluster.html
  initial_node_count = 1

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  node_pool_name = "myTFNodePool"

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  initial_node_count = 2

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  node_pool_location = "westus2"

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  initial_node_count = 3

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  node_pool_location = "westus2"

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  initial_node_count = 4

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  node_pool_location = "westus2"

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  initial_node_count = 5

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  node_pool_location = "westus2"

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  initial_node_count = 6

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  node_pool_location = "westus2"

  # Create kubernetes node pool
  # https://www.terraform.io/docs/providers/azurerm/kubernetes_node_pool.html
  initial_
}

