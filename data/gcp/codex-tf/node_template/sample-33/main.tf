terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a node template. Assign a name, set node type to n1-node-96-624
# and set the disk image to ubuntu-minimal-1804-bionic-v20190916
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-node-96-624"
  disk {
    source_image = "ubuntu-minimal-1804-bionic-v20190916"
  }
}

