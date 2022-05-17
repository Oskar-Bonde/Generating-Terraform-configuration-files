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

# data block, azurem client config file, and terraform state file
data "template_file" "name_2" {
  template = file("${path.module}/userdata.tpl")

  vars = {
    app_user_data = data.template_file.name_2.rendered
  }
}

# create bot channels registration resource
resource "azurerm_bot_application_registration" "name_3" {
  name                = "tf-bot-application-registration"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_1.name
  sku                 = "Standard"
  tags                = {
    environment = "Development"
  }
}

