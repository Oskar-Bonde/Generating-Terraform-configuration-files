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
  location = "westus"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "example"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = "westus"
  kubernetes_version = "1.14.5-minimal.0"
  enable_auto_scaling = true

  # Uncomment this line to delete the default node pool
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
    # uncomment to enable auto scaling of the cluster
  # uncomment to enable auto scaling of the cluster
    # uncomment
}
