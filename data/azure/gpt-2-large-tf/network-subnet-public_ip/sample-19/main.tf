resource "azurerm_storage_account" "name_0" {
  name                = "myTFResourceGroup"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Provider block with features block
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_storage_container" "name_2" {
  name                  = "myTFResourceGroup"
  resource_group_name   = azurerm_resource_group.rg.name
  storage_account_name  = azurerm_storage_account.name_0.name
  container_access_type = "private"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_virtual_network" "name_3" {
  name                = "myTFResourceGroup"
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "myTFResourceGroup"
    subnet_id                     = azurerm_subnet.name_4.id
    private_ip_address_allocation = "static"
    public_ip_address_id          = azurerm_public_ip.name_5.id
  }

  tags {
    Name = "myTFResourceGroup"
  }
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_4" {
  name                 = "myTFResourceGroup"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_3.name
  address_prefix       = "10.0.1.0/24"
  address_prefix_type = "INTERNAL"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
resource "azurerm_public_ip" "name_5" {
  name                         = "myTFResourceGroup"
  location                     = azurerm_resource_group.rg.location
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "myTFResourceGroup"
  domain_name_label_address = "myTFResourceGroup"
}

