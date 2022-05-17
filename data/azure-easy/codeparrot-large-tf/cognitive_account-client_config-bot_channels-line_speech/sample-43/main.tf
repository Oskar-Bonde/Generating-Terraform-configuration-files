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

# create cognitive account resourceter
resource "azurerm_cosmosdb_account" "name_2" {
  name                = "myTFCosmosDBAccount"
  resource_group_name = azurerm_resource_group.name_1.name
  location            = "westus2"
  account_type        = "Standard_LRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = file("${path.module}/user-data-script.sh")

  vars = {
    account_id = data.azurerm_cosmosdb_account.name_2.id
    client_id = data.azurerm_cosmosdb_account.name_2.client_id
    client_secret = data.azurerm_cosmosdb_account.name_2.client_secret
  }
}

# create bot channels registration resource
}

# resource block called bot channel direct line speech
}

