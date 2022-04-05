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

# create a node template. Assign a name, set node type to us-central1
# and set the image type to COS
resource "google_compute_instance_template" "name_0" {
  name = "node-template-%s"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"
  can_ip_forward = false
  tags = ["foo", "bar"]

  disk {
    source_image = "projects/cos-cloud/global/images/family/cos-stable"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
  }

  scheduling {
    preemptible = false
    automatic_restart = true
  }

  metadata = {
    foo = "bar"
  }
}

# create a compute node group resource. Set size to 1 and use the node template form the previous node template resource id
resource "google_compute_node_group" "name_1" {
  name = "node-group-%s"
  zone = "us-central1-a"
  template = google_compute_instance_template.name_0.self_link
  size = 1
}

