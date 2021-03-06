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
# https://www.terraform.io/docs/providers/azurerm/d/azurermv5-azurerm-kubernetes-cluster#example-cluster
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "example"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  # Create default node pool
  node_pool {
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    vm_labels {
      key = "key"
    }
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    vm_os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    vm_admin_username = "azureadmin"
    vm_admin_password = "Password1234!"
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    ssh_key {
      key_data = file(var.ssh_key_path)
    }
    tags = {
      environment = "test"
    }
  }
}

