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

# create a node template. Assign a name, set node type to us-central1
# and set the image to debian-9
resource "google_compute_instance_template" "name_0" {
  name = "node-template-%s"
  machine_type = "n1-standard-1"
  region = "europe-north1"
  source_image = "debian-9-stretch-v20180329"
}

# create a compute node group resource. Set size to 1 and use the node template form the previous node template resource id
resource "google_compute_node_group" "name_1" {
  name = "node-group-%s"
  zone = "europe-north1-a"
  node_template = google_compute_instance_template.name_0.self_link
  size = 1
}

