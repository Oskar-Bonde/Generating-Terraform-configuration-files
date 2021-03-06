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

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "westus"
}

# data block, azurem client config file, and terraform state file
data "template_file" "name_1" {
  template = file("${path.module}/resources/azurem.json")

  vars = {
    azurerm_client_config_file = data.template_file.name_1.rendered
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id
resource "azurerm_bot_channel" "name_2" {
  name                = "example-bot-channel"
  location            = "westus"
  resource_group_name = azurerm_resource_group.rg.name
  channel_role        = "roles/resourcemanager.organizationAdmin"
  depends_on          = [azurerm_resource_group.name_0]
}

