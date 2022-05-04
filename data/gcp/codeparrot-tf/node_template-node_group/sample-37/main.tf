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
  name_prefix = "n1-node-${format("%02d", count.index+1)}"
  machine_type   = "n1-node-96-624"
  can_ip_forward = true

  disk {
    source_image = data.google_compute_image.debian_9.self_link
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
resource "google_compute_node_template_group" "name_1" {
  name_prefix = "node-group-${format("%02d", count.index+1)}"
  machine_type   = "n1-node-96-624"
  can_ip_forward = true

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-96-624"
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
