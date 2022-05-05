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

  kubernetes_version = "1.8.0"

  # Create default node pool
  node_pool {
    name               = "Standard_D2_v2"
    vm_size            = Standard_D2_v2.vmSizeStandard_D2_v2
    os_disk_size_gb  = 30
    os_disk_type_gb = "Standard_LRS"

    # Set OS disk size in Standard D2
    disk_size_gb = 30
    # Set OS disk type in Standard D2
    os_disk_type = "Standard_LRS"

    # Set network interface name
    network_interface_name = "Standard_LRS"
  }

  # Create default node pool
  node_pool {
    name               = "Standard_D3_v2"
    vm_size            = Standard_D3_v2.vmSizeStandard_D3_v2
    os_disk_size_gb  = 30
    os_disk_type_gb = "Standard_LRS"

    # Set OS disk size in Standard D3
    disk_size_gb = 30
    # Set OS disk type in Standard D3
    os_disk_type = "Standard_LRS"

    # Set network interface name
    network_interface_name = "Standard_LRS"
  }

  # Create default node pool
  node_pool {
    name               = "Standard_D4_v2"
    vm_size            = Standard_D4_v2.vmSizeStandard_D4_v2
    os_disk_size_gb  = 30
    os_disk_type_gb = "Standard_LRS"

    # Set network interface name
    network_interface_name = "Standard_D4"
  }

  # Create default node pool
  node_pool {
    name               = "Standard_D5_v2"
    vm_size            = Standard_D5_v2.vmSizeStandard_D5_v2
    os_disk_size_gb  = 30
    os_disk_type_gb = "Standard_LRS"

    # Set network interface name
    network_interface_name = "Standard_D5"
  }

  # Create default node pool
  node_pool {
    name               = "Standard_D6_v2"
    vm_size            = Standard_D6_v2.vmSizeStandard_D6_v2
    os_disk_size_gb  = 30
    os_disk_type_gb = "Standard_LRS"

    # Set network interface name
    network_interface_name = "Standard_D6"
  }

  # Create default node pool
  node_pool {
    name               = "Standard_D7_v2"
    vm_size            = Standard_D7_v2.vmSizeStandard_D7_v2
    os_disk_size_gb  = 30
    os_disk_type_gb = "Standard_LRS"

    # Set network interface name
    network_interface_name = "Standard_D7"
  }

  # Create default node pool
  node_pool {
    name               = "Standard_D8_v2"
    vm_size            = Standard_D8
}

