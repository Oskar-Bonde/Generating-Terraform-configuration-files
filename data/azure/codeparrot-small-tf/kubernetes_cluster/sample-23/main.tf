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
# https://docs.microsoft.com/en-us/azure/nodepool/concepts/nodepool-azurerm#associating_a_node_pool_with_dns_prefix
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.20.0"

  node_count = 1
  vm_size = Standard_D2_v2.vmSizeStandard_D2
  dns_prefix = "exampleaks1"

  # Azure requires at least 3 nodes in the cluster
  # https://docs.microsoft.com/en-us/azure/nodepool/concepts/nodepool-azurerm#associating_a_node_pool_with_dns_prefix
  depends_on = [
    azurerm_kubernetes_cluster.name_1,
  ]
}

