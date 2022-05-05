terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupresource
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "standard"
  location_type = "Standard"
  tags = {
    environment = "test"
  }
}

# make iothub resource group resource
resource "azurerm_resource_group_node_pool" "name_1" {
  name                 = "myTFNodePool"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  node_pool_size     = 1
  enable_auto_scaling = false
  enable_binary_authorization = false
  enable_pod_security_policy = false
  enable_pod_security_policy_attachment = false
  enable_pod_security_policy_maintenance = false
  enable_pod_security_policy_maintenance_window = "Mon:00:00-Mon:02:00"
  os_disk {
    name = "myosdisk1"
    vhd_uri = "${azurerm_storage_account.stor.primary_blob_endpoint}${azurerm_storage_container.vhds.name}/myosdisk1.vhd"
    caching = "ReadWrite"
    create_option = "FromImage"
  }
  os_profile {
    computer_name = "mytf"
    admin_username = "testadmin"
    admin_password = "Password1234!"
    custom_data = base64encode("{\"role\":\"azurerm\"}")
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path = "/home/testadmin/.ssh/authorized_keys"
      key_data = "${file("../ssh/id_rsa.pub")}"
    }
  }
  tags = {
    environment = "test"
  }
}

# iot security solution resource
resource "azurerm_resource_group_security_group" "name_2" {
  name                 = "myTFNodePoolSecurityGroup"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_name = "mytfsg"
  tags = {
    environment = "test"
  }
}

