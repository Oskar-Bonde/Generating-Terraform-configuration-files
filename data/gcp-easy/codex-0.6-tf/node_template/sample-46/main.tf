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
    "kube-env" = "v=1"
  }
  metadata_startup_script = "apt-get update"
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }
}

