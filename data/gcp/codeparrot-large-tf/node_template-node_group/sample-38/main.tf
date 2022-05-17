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
    type         = "pd-standard"
    disk_size_gb = 50
  }

  network_interface {
    network = "default"
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
    machine_type   = "n1-node-80"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-112"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-144"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-200"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-256"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-400"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-600"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2400"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2401"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2402"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2403"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2404"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2405"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2406"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2407"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2408"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-2409"
  }

  node_
}

