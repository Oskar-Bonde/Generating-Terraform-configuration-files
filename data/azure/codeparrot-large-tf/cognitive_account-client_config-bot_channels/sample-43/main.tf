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

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group.
resource "azurerm_cosmosdb_account" "name_1" {
  name                = "scott"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  account_type        = "Standard_LRS"
}

# data block, azurem client config file, and terraform state file
data "template_file" "name_2" {
  template = file("${path.module}/templates/tf_state.json")

  vars = {
    tf_state_bucket_uri = "https://s3-us-west-2.amazonaws.com/terraform-state"
    tf_state_key_uri     = "https://s3-us-west-2.amazonaws.com/terraform-state.pem"
    tf_state_region_uri = "https://s3-us-west-2.amazonaws.com/terraform-state.region"
  }
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name to get registration id.
resource "azurerm_bot_channel" "name_3" {
  name                = "tf_bot_channel"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"
  channel_role        = "roles/pubsub.publisher"
  depends_on          = [azurerm_cosmosdb_account.name_1]
}

