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
}

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_node_template_group" "name_1" {
  name_prefix = "node-template-group-"
  machine_type = "n1-node-96-624"

  node_template {
    id      = "node-template-1"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-2"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-3"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-4"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-5"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-6"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-7"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-8"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-9"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-10"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-11"
    type     = "pd-ssd"
    size     = 1
    auto_delete = true
  }

  node_template {
    id      = "node-template-12"
    type     = "pd-ssd"
    size     = 1
}

