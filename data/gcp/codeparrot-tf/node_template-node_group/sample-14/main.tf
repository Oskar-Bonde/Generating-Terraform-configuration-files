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
    access_config {
    }
  }
}

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_node_template_node_group" "name_1" {
  name_prefix = "n1-node-${local.name_suffix}"
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
    machine_type   = "n1-node-1120"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1121"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1122"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1123"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1124"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1125"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1126"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1127"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1128-32"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1128-64"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1128-96"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1128-160"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1128-192"
  }

  node_template {
    can_ip_forward = true
    machine_type   = "n1-node-1128-224"
  }

  node_
}
