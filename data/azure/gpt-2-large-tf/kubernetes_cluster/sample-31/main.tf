resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_resource_group"
  location = "westus2"
}

# Provider block with features block
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_resource_group_rg"
  location = "westus2"
}

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_resource_group_rg_azure_resource_group_rg"
  location = "westus2"
}

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned
resource "azurerm_virtual_machine" "name_3" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = ["${azurerm_network_interface.rg.id}"]
  vm_size               = "Standard_D1"
  delete_os_disk_on_termination = true
  storage_image_reference {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "CoreOS"
    version   = "latest"
  }
  storage_os_disk {
    name          = "myTFResourceGroup_os_disk"
    vhd_uri       = azurerm_storage_account.rg.primary_blob_endpoint
    caching       = "ReadWrite"
    create_option = "FromImage"
  }
  os_profile {
    computer_name  = "myTFResourceGroup"
    admin_username = "core"
    admin_password = "core"
  }
  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/core/.ssh/authorized_keys"
      key_data = "${file("${var.public_ssh_key}")}"
    }
  }
  tags {
    Name = "myTFResourceGroup"
  }
}

