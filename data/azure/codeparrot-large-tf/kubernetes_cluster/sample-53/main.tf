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

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssignedresource a resource group with 2 node pools and 1 node pool with 1 node count.
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "example"
  location            = "westus"
  resource_group_name = azurerm_resource_group.name_0.name
  kubernetes_version = "1.21"
  enable_auto_scaling = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the default node pool and add a node to it
  #  resource_group_name = azurerm_resource_group.name_0.name
  #  vm_size               = "Standard_D2_v2"
  #  delete_os_disk_on_termination = true
  #  delete_data_disks_on_termination = true

  # Uncomment this line to delete the
}

