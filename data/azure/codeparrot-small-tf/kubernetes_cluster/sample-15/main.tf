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
# and add to azurerm_resource_group.name_0
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.20.0"

  # Create default node pool
  node_pool {
    name            = "Standard_D2_v2"
    vm_size        = Standard_D2_v2.vmSizeStandardD2
    os_disk_size_gb = Standard_D2_v2.osDiskSizeStandardD2
    disk_size_gb    = Standard_D2_v2.diskSizeStandardD2
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "Microsoft.Azure.Extensions"
    image_sku         = "7.3"
    image_version   = "latest"
  }

  # Create default node pool
  node_pool {
    name            = "Standard_DS2"
    vm_size        = Standard_DS2.vmSizeStandardDS2
    os_disk_size_gb = Standard_DS2.osDiskSizeStandardDS2
    disk_size_gb    = Standard_DS2.diskSizeStandardDS2
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "Microsoft.Azure.Extensions"
    image_sku         = "7.3"
    image_version   = "latest"
  }

  # Create default node pool
  node_pool {
    name            = "StandardDS3"
    vm_size        = Standard_DS3.vmSizeStandardDS3
    os_disk_size_gb = Standard_DS3.osDiskSizeStandardDS3
    disk_size_gb    = Standard_DS3.diskSizeStandardDS3
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "Microsoft.Azure.Extensions"
    image_sku         = "7.3"
    image_version   = "latest"
  }

  # Create default node pool
  node_pool {
    name            = "StandardDS4"
    vm_size        = Standard_DS4.vmSizeStandardDS4
    os_disk_size_gb = Standard_DS4.osDiskSizeStandardDS4
    disk_size_gb    = Standard_DS4.diskSizeStandardDS4
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "Microsoft.Azure.Extensions"
    image_sku         = "7.3"
    image_version   = "latest"
  }

  # Create default node pool
  node_pool {
    name            = "StandardDS5"
    vm_size        = Standard_DS5.vmSizeStandardDS5
    os_disk_size_gb = Standard_DS5.osDiskSizeStandardDS5
    disk_size_gb    = Standard_DS5.diskSizeStandardDS5
    image_publisher = "Microsoft.Azure.Extensions"
    image_offer     = "Microsoft.Azure.Extensions"
    image_sku         = "7.3"
    image_version   = "latest"
  }

  # Create default node pool
  node_pool {
    name            = "StandardDS6"
    vm_size        = Standard_DS6.vmSizeStandardDS6
    os_disk_size_gb = Standard_DS6.os
}

