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
resource "google_compute_node_template" "name_0" {
  name_prefix = "n1-node-${local.name_suffix}"
  machine_type = "n1-node-96-624"
  can_ip_forward = true
  tags = ["n1-node"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
    type         = "pd-standard"
    disk_size_gb = 50
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
