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
  name                = "myCognitive"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/user-data.tpl")

  vars = {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
  }
}

# create bot channels registration resource
resource "azurerm_bot_channel" "name_4" {
  name                = "myBotChannel"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  channel_role        = "Registered"
}

