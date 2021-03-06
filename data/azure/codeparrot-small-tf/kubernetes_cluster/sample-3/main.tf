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
# with AzureRM using azurerm.
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  kubernetes_version = "1.8.0"

  # Create default node pool
  node_pool {
    name = "Standard_D2_v2"
    vm_size = "Standard_DS2_v2"
    os_disk {
      caching = "ReadWrite"
      create_option = "FromImage"
    }
  }

  # Create kubernetes node pool
  node_pool {
    name = "Standard_DS2"
    vm_size = "Standard_DS2"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create default node pool
  node_pool {
    name = "Standard_DS3"
    vm_size = "Standard_DS3"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create kubernetes node pool
  node_pool {
    name = "Standard_DS4"
    vm_size = "Standard_DS4"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create default node pool
  node_pool {
    name = "Standard_DS5"
    vm_size = "Standard_DS5"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create kubernetes node pool
  node_pool {
    name = "Standard_DS6"
    vm_size = "Standard_DS6"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create default node pool
  node_pool {
    name = "Standard_DS7"
    vm_size = "Standard_DS7"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create kubernetes node pool
  node_pool {
    name = "Standard_DS8"
    vm_size = "Standard_DS8"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create default node pool
  node_pool {
    name = "Standard_DS9"
    vm_size = "Standard_DS9"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create kubernetes node pool
  node_pool {
    name = "Standard_DS10"
    vm_size = "Standard_DS10"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create default node pool
  node_pool {
    name = "Standard_DS11"
    vm_size = "Standard_DS11"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create kubernetes node pool
  node_pool {
    name = "Standard_DS12"
    vm_size = "Standard_DS12"
    os_disk {
      caching = "ReadWrite"
      create_option = "Empty"
    }
  }

  # Create default node pool
 
}

