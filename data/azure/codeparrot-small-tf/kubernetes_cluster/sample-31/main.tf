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
# and add to existing node pool
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  kubernetes_version = "1.8.0"

  # Azure cluster settings
  # vm_size = "Standard_DS2_v2"
  # vm_size = "Standard_DS2"
  # vm_size = "Standard_DS2"

  # Azure cluster settings
  # vm_size = "Standard_DS3_v2"
  # vm_size = "Standard_DS3"

  # Azure cluster settings
  # vm_size = "Standard_DS4_v2"
  # vm_size = "Standard_DS4"

  # Azure cluster settings
  # vm_size = "Standard_DS5_v2"
  # vm_size = "Standard_DS5"

  # Azure cluster settings
  # vm_size = "Standard_DS6_v2"
  # vm_size = "Standard_DS6"

  # Azure cluster settings
  # vm_size = "Standard_DS7_v2"
  # vm_size = "Standard_DS7"

  # Azure cluster settings
  # vm_size = "Standard_DS8_v2"
  # vm_size = "Standard_DS8"

  # Azure cluster settings
  # vm_size = "Standard_DS9_v2"
  # vm_size = "Standard_DS9"

  # Azure cluster settings
  # vm_size = "Standard_DS10_v2"
  # vm_size = "Standard_DS10"

  # Azure cluster settings
  # vm_size = "Standard_DS11_v2"
  # vm_size = "Standard_DS11"

  # Azure cluster settings
  # vm_size = "Standard_DS12_v2"
  # vm_size = "Standard_DS12"

  # Azure cluster settings
  # vm_size = "Standard_DS13_v2"
  # vm_size = "Standard_DS13"

  # Azure cluster settings
  # vm_size = "Standard_DS14_v2"
  # vm_size = "Standard_DS14"

  # Azure cluster settings
  # vm_size = "Standard_DS1_v2"
  # vm_size = "Standard_DS1"

  # Azure cluster settings
  # vm_size = "Standard_DS2_v2"
  # vm_size = "Standard_DS2"

  # Azure cluster settings
  # vm_size = "Standard_DS3_v2"
  # vm_size = "Standard_DS3"

  # Azure cluster settings
  # vm_size = "Standard_DS4_v2"
  # vm_size = "Standard_DS4"

  # Azure cluster settings
  # vm_size = "Standard_DS5_v2"
  # vm_size = "Standard_DS5"

  # Azure cluster settings
  # vm_size = "Standard_DS6_v2"
  # vm_size = "Standard_DS6"

  # Azure cluster settings
  # vm_size = "Standard_DS7_v2"
  # vm_size = "Standard_DS7"

  # Azure cluster settings
  # vm_size = "Standard_DS8_v2"
  # vm
}

