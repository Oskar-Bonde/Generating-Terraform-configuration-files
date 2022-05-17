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

  # allow outbound tcp traffic on all ports
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  # allow outbound udp traffic on a port range
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  allow {
    protocol = "icmp"
    ports    = ["1-65535"]
  }

  # allow outbound tcp traffic on a port range
  allow {
    protocol = "tcp"
    ports    = ["1-65535"]
  }

  # allow outbound udp traffic on a port range
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  allow {
    protocol = "icmp"
    ports    = ["1-65535"]
  }
}

# make managed disk resource group accessible via public IP
resource "azurerm_managed_disk" "name_2" {
  name                 = "myTFManagedDisk"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.name_0.name
  storage_account_type = "Standard_LRS"
  create_option        = "FromImage"
  disk_size_gb         = "50"
  create_option        = "Attach"
  disk_encryption_set_id = azurerm_managed_disk.name_2.id

  # allow outbound tcp traffic on a port range
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  # allow outbound udp traffic on a port range
  allow {
    protocol = "udp"
    ports    = ["1-65535"]
  }

  # allow outbound icmp traffic on a port range
  allow {
    protocol = "icmp"
    ports    = ["1-65535"]
  }
}

