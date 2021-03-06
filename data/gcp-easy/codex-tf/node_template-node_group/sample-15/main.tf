terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = "${file("account.json")}"
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "my-instance-template"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name        = "my-node-group"
  description = "my node group"
  version     = "1.15.9-gke.24"
  node_count  = 3
  node_type   = "n1-standard-1"
  zone        = "us-central1-a"

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      my-label = "my-label-value"
    }

    taint {
      key    = "my-taint"
      value  = "my-taint-value"
      effect = "NO_SCHEDULE"
    }

    service_account = "default"
  }

  node_pool {
    name       = "my-node-pool"
    node_count = 3
    node_type  = "n1-standard-1"
    zone       = "us-central1-a"

    node_config {
      oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
      ]

      metadata = {
        disable-legacy-endpoints = "true"
      }

      labels = {
        my-label = "my-label-value"
      }

      taint {
        key    = "my-taint"
        value  = "my-taint-value"
        effect = "NO_S
}

