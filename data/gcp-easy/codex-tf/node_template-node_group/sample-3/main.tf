terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name_prefix = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["kubernetes"]
  metadata = {
    "items" = [
      {
        "key" = "google-container-manifest",
        "value" = "${file("${var.node_manifest_file}")}"
      },
      {
        "key" = "google-container-manifest-version",
        "value" = "v1beta1"
      }
    ]
  }
  disk {
    source_image = "projects/cos-cloud/global/images/cos-stable-60-9592-89-0"
    auto_delete = true
    boot = true
  }
  network_interface {
    network = "default"
  }
  service_account {
    scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node-group"
  description = "Node group for Kubernetes"
  node_template = "${google_compute_instance_template.name_0.self_link}"
  target_size = 3
  initial_node_count = 3
  zone = "${var.zone}"
}

