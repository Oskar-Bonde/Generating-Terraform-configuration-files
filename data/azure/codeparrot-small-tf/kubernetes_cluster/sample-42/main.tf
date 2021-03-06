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
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandardD2.id
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    disk_size_gb   = Standard_D2_v2.diskSizeStandardD2.id
    admin_username = "azureuser"
    admin_password = "Password1234!"
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2.id
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data = base64encode(file("azureuserdata.sh"))
    os_profile_linux_config {
      disable_password_authentication = false
      ssh_keys {
        path     = "/home/azureuser/.ssh/authorized_keys"
        key_data = file("azureuserdata.sh")
      }
    }
  }

  # Create default node pool
  node_pool {
    name            = "Standard_D3_v2"
    vm_size        = Standard_D3_v2.vmSizeStandardD3.id
    os_disk_size_gb = Standard_D3_v2.osDiskSizeStandardD3.id
    disk_size_gb   = Standard_D3_v2.diskSizeStandardD3.id
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data = base64encode(file("azureuserdata.sh"))
    os_profile_linux_config {
      disable_password_authentication = false
      ssh_keys {
        path     = "/home/azureuser/.ssh/authorized_keys"
        key_data = file("azureuserdata.sh")
      }
    }
  }

  # Create default node pool
  node_pool {
    name            = "Standard_D4_v2"
    vm_size        = Standard_D4_v2.vmSizeStandardD4.id
    os_disk_size_gb = Standard_D4_v2.osDiskSizeStandardD4.id
    disk_size_gb   = Standard_D4_v2.diskSizeStandardD4.id
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data = base64encode(file("azureuserdata.sh"))
    os_profile_linux_config {
      disable_password_authentication = false
      ssh_keys {
        path     = "/home/azureuser/.ssh/authorized_keys"
        key_data = file("azureuserdata.sh")
      }
    }
  }
}

