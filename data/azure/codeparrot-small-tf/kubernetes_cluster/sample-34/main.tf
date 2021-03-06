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
  name     = "example-rg"
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
  initial_node_count = 1
  node_size = 1

  # Create kubernetes cluster node pool
  node_pool {
    name               = "exampleaks1"
    vm_size            = "Standard_D2_v2"
    os_disk_size_gb  = 10
    os_disk_type_gb = "Standard_D2"
    admin_username     = "azureuser"
    admin_password    = "Password1234!"
    admin_username_password = "Password1234!"

    # Create default node pool
    node_pool {
      name               = "exampleaks2"
      vm_size            = "Standard_D2_v2"
      os_disk_size_gb  = 10
      os_disk_type_gb = "Standard_D2"
      admin_username     = "azureuser"
      admin_password    = "Password1234!"
      admin_username_password = "Password1234!"

      # Create default node pool
      node_pool {
        name               = "exampleaks3"
        vm_size            = "Standard_D2_v2"
        os_disk_size_gb  = 10
        os_disk_type_gb = "Standard_D2"
        admin_username     = "azureuser"
        admin_password    = "Password1234!"
        admin_username_password = "Password1234!"
      }
    }
  }
}

