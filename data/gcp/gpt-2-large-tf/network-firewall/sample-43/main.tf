terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance
resource "google_compute_instance" "name_0" {
  name = "my-vm-instance-disk"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create compute network, give it a name and auto create subnetworks
resource "google_compute_network" "name_1" {
  name = "my-vm-network"
  auto_create_subnetworks = false
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web
resource "google_compute_subnetwork" "name_2" {
  name = "my-vm-subnet"
  ip_cidr_range = "10.0.0.0/16"
  network = "default"
  region = "us-central1"
}

