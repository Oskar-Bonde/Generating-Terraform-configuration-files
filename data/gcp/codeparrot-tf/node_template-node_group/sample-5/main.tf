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

  node_type = "n1-node-96-624"

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata {
    sshKeys = "ubuntu:${file("~/.ssh/${var.key_name}.pub")}"
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}

# create a compute node group resource. Set size to 1 and use the node template resource id.
resource "google_compute_node_template_member" "name_1" {
  name = "node-group-node-${local.name_suffix}"
  node_template = google_compute_node_template.name_0.id
  region = "europe-west1"
  version = "1.20.23"

  node_pools {
    size = 1
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-2"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-4"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-8"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-16"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-32"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-64"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-80"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-96"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-112"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-128"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-160"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-192"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-256"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-384"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-4dc"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-56"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-64"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-80"
  }

  node_pools {
    size = 1
    machine_type = "e2-standard-112"
  }

  node_pools {
    size = 1
    machine_type = "e2
}
