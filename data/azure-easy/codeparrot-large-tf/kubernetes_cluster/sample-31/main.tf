terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# create resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFRG"
  location = "westus2"
}

# kubernetes cluster resource group
resource "azurerm_kubernetes_cluster" "name_2" {
  name                = "myTFCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  kubernetes_version = "1.14.6"

  # Uncomment this line to delete the default node pool and add your own.
  # uncomment the below line and set the following line to "Terraform destroy"
  # uncomment the below line and set the following line to "Terraform scale up"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line to "Terraform upgrade"
  # uncomment the below line and set the following line
}

