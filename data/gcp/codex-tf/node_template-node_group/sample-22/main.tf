terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a node template. Assign a name, set node type to n1-node-96-624
# and set the disk size to 10GB.
resource "google_compute_instance_template" "name_0" {
  name = "my-template"
  machine_type = "n1-node-96-624"
  disk {
    size = 10
  }
}

# create a compute node group resource. Set size to 1 and use the node template resource id
# as the template.
resource "google_compute_node_group" "name_1" {
  name = "my-node-group"
  size = 1
  node_template = google_compute_instance_template.name_0.id
}

