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

# create a node template. Assign a name, set node type to n1-node-96-624
resource "google_compute_instance" "name_0" {
  name = "my-node-template"
  machine_type = "n1-standard-1"

  network_interface {
    network = "default"    
  }
}

