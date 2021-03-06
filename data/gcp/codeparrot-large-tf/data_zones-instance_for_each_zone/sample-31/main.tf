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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  region = "europe-west4"
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name.
resource "google_compute_instance" "name_1" {
  name = "my-vm"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }

  # create a public IP address
  public_ip = "10.0.0.5"

  # create a private IP address
  network_interface {
    network = "default"
  }

  # create a network interface inside the created network
  network_ip = "10.0.0.5"

  # create a subnet in the created network
  subnet = "10.0.1.0/24"

  # create a secondary IP address
  secondary_ip = "10.0.2.5"

  # create a network interface inside the created network
  network_interface {
    network = "default"
  }

  # create a subnet in the created network
  network_ip = "10.0.3.0/24"

  # create a firewall rule to allow HTTP and SSH access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow TCP/UDP access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow HTTP/S access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow TCP/UDP access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow HTTP/S access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow TCP/UDP access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow HTTP/S access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow TCP/UDP access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow TCP/UDP access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "INGRESS"
    priority = 1
  }

  # create a firewall rule to allow HTTP/S access
  firewall_rule {
    source_ranges = ["0.0.0.0/0"]
    direction = "
}

