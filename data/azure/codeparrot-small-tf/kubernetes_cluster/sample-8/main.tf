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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned with AzureRM
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.20.0"

  # Create default node pool
  initial_node_count = 1
  node_count         = 1

  # Create kubernetes cluster node pool
  node_pool {
    name            = "exampleaks1"
    vm_size        = Standard_D2_v2.vmSizeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    admin_username = "admin"
    admin_password = "Password1234!"
    admin_ssh_key {
      key_data = file("azurerm_public_key.pub")
    }
  }

  # Create default node pool
  node_pool {
    name            = "exampleaks1"
    vm_size        = Standard_D2_v2.vmSizeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    admin_username = "admin"
    admin_password = "Password1234!"
    admin_ssh_key {
      key_data = file("azurerm_public_key.pub")
    }
  }

  # Create default node pool
  node_pool {
    name            = "exampleaks2"
    vm_size        = Standard_D2_v2.vmSizeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    admin_username = "admin"
    admin_password = "Password1234!"
    admin_ssh_key {
      key_data = file("azurerm_public_key.pub")
    }
  }

  # Create default node pool
  node_pool {
    name            = "exampleaks2"
    vm_size        = Standard_D2_v2.vmSizeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    os_disk_type    = Standard_D2_v2.osDiskTypeStandardD2.id
    admin_username = "admin"
    admin_password = "Password1234!"
    admin_ssh_key {
      key_data = file("azurerm_public_key.pub")
    }
  }
}

