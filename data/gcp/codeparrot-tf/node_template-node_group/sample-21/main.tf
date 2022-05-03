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
  name_prefix = "node-template-"
  machine_type   = "n1-node-96-624"
  can_ip_forward = true

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

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_node_template_node_group" "name_1" {
  name_prefix = "node-template-node-group-"
  machine_type   = "n1-node-96-624"
  can_ip_forward = true

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-96-624"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-32-40
}

