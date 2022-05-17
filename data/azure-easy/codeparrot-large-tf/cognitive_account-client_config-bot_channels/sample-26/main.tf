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

# create cognitive account resource
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "cognitive"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/user-data-linux.sh")

  vars = {
    ecs_cluster_name = var.ecs_cluster_name
    ecs_service_name  = var.ecs_service_name
    ecs_cluster_location = var.ecs_cluster_location
    ecs_service_location = var.ecs_service_location
  }
}

# create bot channels registration resource

}

