terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create resource group policy
resource "azurerm_resource_group_policy" "name_1" {
  name     = "myTFResourceGroupPolicy"
  location = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  # allow outbound tcp traffic on port 22
  egress {
    # from_port = 0
    # to_port = 65535
    protocol = "tcp"
    # cidr_blocks = ["0.0.0.0/0"]
  }

  # allow outbound udp traffic on port 80
  egress {
    # from_port = 0
    # to_port = 65535
    protocol = "udp"
    # cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound ssh traffic from a specific port
  ingress {
    # from_port = 22
    # to_port = 22
    protocol = "tcp"
    # cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # from_port = -1
    # to_port = -1
    protocol = "icmp"
    # cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound udp traffic of a specific type
  ingress {
    # from_port = -1
    # to_port = -1
    protocol = "udp"
    # cidr_blocks = ["0.0.0.0/0"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # from_port = -1
    # to_port = -1
    protocol = "icmp"
    # cidr_blocks = ["0.0.0.0/0"]
  }

  # allow all outbound traffic
  egress {
    # from_port = 0
    # to_port = 65535
    protocol = "-1"
    # cidr_blocks = ["0.0.0.0/0"]
  }
}

# create storage account resource group
resource "azurerm_storage_account" "name_2" {
  name                     = "myTFStorageAccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# create advanced threat protection resource group
resource "azurerm_storage_account" "name_3" {
  name                     = "myTFStorageAccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

