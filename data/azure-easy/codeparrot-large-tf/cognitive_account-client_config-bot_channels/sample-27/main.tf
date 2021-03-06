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
  name                = "${var.prefix}${var.account_name}"
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location            = "${var.location}"
  account_tier         = "Standard"
  account_replication_type = "GRS"
}

# data block, azurem client config
data "template_file" "name_3" {
  template = "${file("${path.module}/user_data.tpl")}"

  vars {
    account_name = "${var.prefix}${var.account_name}"
    account_key = "${var.prefix}${var.account_key}"
    account_endpoint = "${var.account_endpoint}"
    container_name = "${var.prefix}${var.container_name}"
    container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
    container_storage_account_name = "${var.prefix}${var.container_storage_account_name}"
    container_container_name = "${var.prefix}${var.container_container_name}"
    container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
    container_storage_container_name = "${var.prefix}${var.container_storage_container_name}"
    container_container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
    container_storage_account_key = "${var.prefix}${var.container_storage_account_key}"
    container_container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
    container_storage_container_name = "${var.prefix}${var.container_storage_container_name}"
    container_container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
    container_storage_account_key = "${var.prefix}${var.container_storage_account_key}"
    container_container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
    container_storage_container_name = "${var.prefix}${var.container_storage_container_name}"
    container_container_access_type = "${var.container_access_type}"
    container_access_id = "${var.prefix}${var.container_access_id}"
    container_password = "${var.prefix}${var.container_password}"
  }
}

# create bot channels registration resource

}

