resource "azurerm_public_ip" "name_0" {
  name                = "myTFResourceGroup"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
}

# Provider block with features block
resource "azurerm_public_ip_address" "name_1" {
  name                = "myTFResourceGroup-${var.environment}-${var.environment_type}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  depends_on            = [azurerm_public_ip.name_0]
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_network_interface" "name_3" {
  name                = "myTFResourceGroup-${var.environment}-${var.environment_type}"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup-${var.environment}-${var.environment_type}"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "static"
    public_ip_address_id          = azurerm_public_ip.name_0.id
  }
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_network_interface" "name_3" {
  name                = "myTFResourceGroup-${var.environment}-${var.environment_type}"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "myTFResourceGroup-${var.environment}-${var.environment_type}"
    subnet_id                     = azurerm_subnet.rg.id
    private_ip_address_allocation = "static"
    public_ip_address_id          = azurerm_public_ip.name_0.id
  }
}

