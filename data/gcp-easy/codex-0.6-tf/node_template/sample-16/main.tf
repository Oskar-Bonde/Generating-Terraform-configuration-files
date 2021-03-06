terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["kubernetes"]
  metadata = {
    "items" = [
      {
        "key" = "google-container-manifest",
        "value" = file("${path.module}/node.yaml")
      }
    ]
  }
  disk {
    source_image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-1804-lts"
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
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
}

