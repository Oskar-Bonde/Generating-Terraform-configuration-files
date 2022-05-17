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

# data block, azurem client config file
data "template_file" "name_2" {
  template = file("${path.module}/user-data.tpl")

  vars = {
    azurerm_subscription_id = var.azurerm_subscription_id
    azurerm_client_id = var.azurerm_client_id
    azurerm_client_secret = var.azurerm_client_secret
    azurerm_tenant_id = var.azurerm_tenant_id
    azurerm_location = var.azurerm_location
  }
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_3" {
  name                = "myTFTbotRegistration"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = azurerm_resource_group.name_1.location
  sku                 = var.bot_sku
  webhook_url          = var.webhook_url
  registration_endpoint = var.registration_endpoint
  client_id           = var.client_id
}

