resource "azurerm_public_ip" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# Provider block with features block
resource "azurerm_public_ip_address" "name_1" {
  name                = "myTFResourceGroup-${var.rg_name}"
  resource_group_name = azurerm_resource_group.rg.name
  domain_name_label = "myTFResourceGroup-${var.rg_name}"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup-${var.rg_name}"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  network_security_group_id = azurerm_network_security_group.rg.id
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy
}

