resource "azurerm_public_ip" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# Provider block with features block
resource "azurerm_public_ip_address" "name_1" {
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  domain_name_label = "myTFResourceGroup"
}

# create resource group and name it atp example. Set location to west europe
resource "azurerm_network_interface" "name_2" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "static"
    public_ip_address_id          = azurerm_public_ip.name_0.id
  }
}

# create storage account resource. Use resource group name and location from atp-example. Use account tier standard and replication type to LRS
resource "azurerm_storage_account" "name_3" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource. Set target resource id to storage account id and make enabled true
resource "azurerm_storage_container" "name_4" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_3.name
  container_access_type = "private"
}

