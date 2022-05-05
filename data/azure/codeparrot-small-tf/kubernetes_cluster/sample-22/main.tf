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

  # Use default node pool
  node_pool {
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandardD2
  }

  # Use default node pool
  node_pool {
    name            = "Standard_DS2_v2"
    vm_size        = Standard_DS2_v2.vmSizeStandardDS2
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS3_v2"
    vm_size        = Standard_DS3_v2.vmSizeStandardDS3
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS4_v2"
    vm_size        = Standard_DS4_v2.vmSizeStandardDS4
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS5_v2"
    vm_size        = Standard_DS5_v2.vmSizeStandardDS5
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS6_v2"
    vm_size        = Standard_DS6_v2.vmSizeStandardDS6
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS7_v2"
    vm_size        = Standard_DS7_v2.vmSizeStandardDS7
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS8_v2"
    vm_size        = Standard_DS8_v2.vmSizeStandardDS8
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS9_v2"
    vm_size        = Standard_DS9_v2.vmSizeStandardDS9
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS10_v2"
    vm_size        = Standard_DS10_v2.vmSizeStandardDS10
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS11_v2"
    vm_size        = Standard_DS11_v2.vmSizeStandardDS11
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS12_v2"
    vm_size        = Standard_DS12_v2.vmSizeStandardDS12
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS13_v2"
    vm_size        = Standard_DS13_v2.vmSizeStandardDS13
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS14_v2"
    vm_size        = Standard_DS14_v2.vmSizeStandardDS14
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS15_v2"
    vm_size        = Standard_DS15_v2.vmSizeStandardDS15
  }

  # Use default node pool
  node_pool {
    name            = "StandardDS
}

