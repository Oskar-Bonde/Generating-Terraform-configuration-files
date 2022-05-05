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

  # Use default node pool
  node_pool {
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandard_D2_v2
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandard_D2_v2
    disk_size_gb   = Standard_D2_v2.diskSizeStandard_D2_v2
    admin_username = "azureuser"
    admin_password = "Password1234!"
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandard_D2_v2
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data = base64encode("{\"cluster\":\"${azurerm_kubernetes_cluster.name_1.name}\",\"kubernetesVersion\":\"1.8.0\"}")
  }

  # Create default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned with AzureRM
  node_pool {
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandard_D2_v2
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandard_D2_v2
    disk_size_gb   = Standard_D2_v2.diskSizeStandard_D2_v2
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data = base64encode("{\"cluster\":\"${azurerm_kubernetes_cluster.name_1.name}\",\"kubernetesVersion\":\"1.8.0\"}")
  }

  # Create default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned with AzureRM
  node_pool {
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandard_D2_v2
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandard_D2_v2
    disk_size_gb   = Standard_D2_v2.diskSizeStandard_D2_v2
    admin_username = "azureuser"
    admin_password = "Password1234!"
    custom_data = base64encode("{\"cluster\":\"${azurerm_kubernetes_cluster.name_1.name}\",\"kubernetesVersion\":\"1.8.0\"}")
  }

  # Create default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned with AzureRM
  node_pool {
    name            = "Standard_D3_v2"
    vm_size        = Standard_D3_v2.vmSizeStandard_D3_v2
    os_disk_size_gb = Standard_D3_v2.osDiskSizeStandard_D3_v2
    disk_size_gb   = Standard_D3_v2.diskSize
}

