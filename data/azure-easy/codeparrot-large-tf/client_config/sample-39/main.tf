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

# data block, azurem client config file, and terraform module
data "azurerm_client_config" "name_2" {}

# terraform module, including all resources
module "resource_group" {
  source = "./resource_group"

  # resource group settings
  resource_group_name = "${azurerm_resource_group.name_1.name}"
  location = "${azurerm_resource_group.name_1.location}"

  # network settings
  network_interface_ids = ["${azurerm_network_interface.nic.id}"]
  # subnet settings
  subnet_id = "${azurerm_subnet.subnet.id}"
  # security settings
  security_group_id = "${azurerm_network_security_group.sg_ssh.id}"
  # image settings
  image_id = "${azurerm_image.image.id}"
  # instance settings
  instance_type = "${var.instance_type}"
  # storage account settings
  storage_type = "${var.storage_type}"
  # custom image settings
  custom_image_id = "${var.custom_image_id}"
  # custom image settings
  custom_image_name = "${var.custom_image_name}"
  # instance image settings
  instance_image_id = "${var.instance_image_id}"
  # custom image settings
  custom_image_user_data = "${var.custom_image_user_data}"
  # custom image settings
  custom_image_type = "${var.custom_image_type}"
  # instance image settings
  instance_type_custom_image = "${var.instance_type_custom_image}"
  # custom image settings
  custom_image_user_data_type = "${var.custom_image_user_data_type}"
  # instance image settings
  instance_type_custom_image_type = "${var.instance_type_custom_image_type}"
  # custom image settings
  custom_image_user_data_type = "${var.custom_image_user_data_type}"
  # instance image settings
  instance_type_custom_image_user_data = "${var.instance_type_custom_image_user_data}"
  # custom image settings
  custom_image_type_custom_image = "${var.custom_image_type_custom_image}"
  # instance image settings
  instance_type_custom_image_user_data_type = "${var.instance_type_custom_image_user_data_type}"
  # custom image settings
  custom_image_user_data_type = "${var.custom_image_user_data_type}"
  # instance image settings
  instance_type_custom_image_user_data_type = "${var.instance_type_custom_image_user_data_type}"
  # custom image settings
  custom_image_user_data = "${var.custom_image_user_data}"
  # instance image settings
  instance_type_custom_image_user_data_type = "${var.instance_type_custom_image_user_data_type}"
  # custom image settings
  custom_image_user_data_type = "${var.custom_image_user_data_type}"
  # instance image settings
  instance_type_custom_image_user_data_type = "${var.instance_type_custom_image_user_data_type}"
  # custom image settings
  custom_image_user_data_type = "${var.custom_image_user_data_type}"
  # instance image settings
  instance_type_custom_image_user_data_type
}

