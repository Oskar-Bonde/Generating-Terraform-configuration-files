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

# create a node template. Assign a name, set node type to n1-node-96-624, and set node_metadata to "node-metadata"
resource "google_compute_instance" "name_0" {
  name = "my-node-template"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_instance_group" "name_1" {
  name = "my-node-group"
  machine_type = "n1-standard-1"

  network_interface {
    network = "default"    
  }
}

