terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "test"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version    = "1.20.0"

  # kubernetes configuration
  kubernetes_config {
    namespace = "default"

    master_ipv4_cidr_block  = "172.16.0.0/28"
    node_ipv4_cidr_block = "172.20.0.0/28"
  }

  # create kubernetes cluster node pool
  node_pool {
    name               = "test"
    vm_size             = "Standard_D2s_v2"
    os_disk_size_gb      = "1023"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer           = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
    os_disk_size_gb      = "1023"
    admin_username        = "azureuser"
    admin_password        = "Password1234!"
    admin_network_interface {
      name         = "NetworkInterface"
      primary_ip_address = "10.0.0.0/16"
      subnet_id     = azurerm_subnet.test.id
    }
  }

  # create kubernetes cluster node pool
  node_pool {
    name               = "test"
    vm_size             = "Standard_D2s_v2"
    os_disk_size_gb      = "1023"
    image_publisher       = "MicrosoftWindowsServer"
    image_offer           = "WindowsServer"
    image_sku             = "2012-R2-Datacenter"
    image_version         = "latest"
    os_disk_size_gb      = "1023"
    admin_username        = "azureuser"
    admin_password        = "Password1234!"
    admin_network_interface {
      name         = "NetworkInterface"
      primary_ip_address = "10.0.0.0/16"
      subnet_id     = azurerm_subnet.test.id
    }
  }
}

