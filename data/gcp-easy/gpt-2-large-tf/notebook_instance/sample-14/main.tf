terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider blockresource "google_compute_instance" "vm_instance_from_node" {
  name = "my-compute-instance-from-node-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a notebook instance

resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from-node-from
}

