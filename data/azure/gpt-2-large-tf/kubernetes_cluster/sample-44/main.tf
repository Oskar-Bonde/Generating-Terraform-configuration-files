terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features blockresource "azurerm_resource_group" "rg_policy" {
  name     = "myTFResourceGroup_policy"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_policy_policy"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_policy_http_ip"
  location = "westus2"
}

