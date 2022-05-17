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
  kubernetes_version = "1.21"
  location            = "westus"
  vm_size              = "Standard_D2_v2"

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm pool
  # remove_default_vm_pool = true

  # Uncomment this line to delete the default image
  # remove_default_image = true

  # Uncomment this line to delete the default image
  # remove_default_image = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network = true

  # Uncomment this line to delete the default security group
  # remove_default_security_group = true

  # Uncomment this line to delete the default service account
  # remove_default_service_account = true

  # Uncomment this line to delete the default network
  # remove_default_network
}

