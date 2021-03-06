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
    # tcp from anywhere
    protocol    = "tcp"
    ports       = ["22"]
  }

  # allow outbound udp traffic on port 22
  egress {
    # udp from anywhere
    protocol    = "udp"
    ports       = ["22"]
  }

  # allow inbound ssh traffic from the ingress
  ingress {
    # ssh-from-port 22
    protocol    = "tcp"
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -i
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -p
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -j
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -v
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -m
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -o
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -p
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -j
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -m
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -p
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -j
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -m
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -p
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -j
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -p
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -m
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -p
    protocol    = 1
    ports       = ["22"]
  }

  # allow inbound icmp traffic of a specific type
  ingress {
    # ssh-from-port -j
    protocol   
}

# data block, azurem client config
}

# create bot channels registration resource
}

