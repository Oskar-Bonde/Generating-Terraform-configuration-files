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
  location            = "westus"
  resource_group_name = azurerm_resource_group.name_0.name
  kubernetes_version = "1.21"
  enable_auto_scaling = true
  enable_node_pool    = true
  node_count          = 1
  vm_size              = Standard_D2_v2.Standard_D2_v2.id
  delete_os_disk_on_termination = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node count
  # remove_default_node_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node count
  # remove_default_node_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default vm count
  # remove_default_vm_count = true

  # Uncomment this line to delete the default vm size
  # remove_default_vm_size = true

  # Uncomment this line to delete the default node pool
  # remove_default_node_pool = true

  # Uncomment this line to delete the default
}

