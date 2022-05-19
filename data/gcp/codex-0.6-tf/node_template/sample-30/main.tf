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
# and set the disk size to 50GB
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-node-96-624"
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
    initialize_params {
      disk_size_gb = 50
    }
  }
}

