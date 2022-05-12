terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy"
  zone = "europe-west1-b"
  type = "A"

  # DNS
  allow_global_access = true
  allow_owner_override = true

  # allow DNS traffic
  allow_inbound_forwarding = true

  # allow outbound tcp traffic
  allow_outbound_traffic = true

  # allow DNS traffic from all instances in the network
  allow_all_outbound_traffic = true

  # allow all outbound traffic
  allow_ssh_connections = true

  # allow all outbound traffic from a specific IP address
  allow_all_outbound_traffic_from_instances = true

  # allow all outbound traffic to a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_to_instances = true

  # allow all outbound traffic to a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_all_outbound_traffic_to_instances = true

  # allow all outbound traffic from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_from_instances = true

  # allow SSH connections from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow SSH connections from a specific IP address
  allow_outbound_traffic_from_instances = true

  # allow all outbound traffic from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_to_instances = true

  # allow SSH connections from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_from_instances = true

  # allow all outbound traffic from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_to_instances = true

  # allow all outbound traffic from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow SSH connections from a specific IP address
  allow_outbound_traffic_from_instances = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_to_instances = true

  # allow all outbound traffic from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_from_instances = true

  # allow SSH connections from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_to_instances = true

  # allow SSH connections from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_from_instances = true

  # allow all outbound traffic from a specific IP address
  allow_outbound_traffic_to_instances = true

  # allow SSH connections from a specific IP address
  allow_ssh_connections_to_instance = true

  # allow all outbound traffic from a specific IP
}

