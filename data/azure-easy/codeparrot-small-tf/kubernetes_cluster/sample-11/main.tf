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

  kubernetes_config {
    namespace = "default"

    master_ipv4_cidr_block  = "172.16.0.0/28"
    worker_ipv4_cidr_block = "172.20.0.0/28"

    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
    # TODO: Need to allow traffic from self
  }
}

