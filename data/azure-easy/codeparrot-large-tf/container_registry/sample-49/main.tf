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
  # allow outbound udp traffic on port 22
  # allow outbound icmp traffic on port 22
  # allow outbound any to any port
  # allow outbound tcp traffic on port 22
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port 22
  # allow outbound all to any port
  # allow outbound udp traffic on port
}

# create container registry resource
}

