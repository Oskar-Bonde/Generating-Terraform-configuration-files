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

# create compute network, give it a name
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags webvariable "network" {
#   network = "default"
# }

# create compute instance
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-${random_suffix}"
  machine_type = "f1-micro"
  zone = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default" 
    access_config {
    }
  }
}

