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
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-node-96-624"
  can_ip_forward = false
  tags = ["node"]
  metadata = {
    disable-ssh = "true"
  }
  metadata_startup_script = "apt-get update"
  service_account {
    email = "default"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
  network_interface {
    network = "default"
  }
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }
}

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  size = 1
  node_template = google_compute_instance_template.name_0.id
}

