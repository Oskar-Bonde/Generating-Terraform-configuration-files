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
resource "google_compute_node_template" "name_1" {
  name_prefix = "n1-node-${format("%02d", count.index+1)}"
  description = "a node template to test the Nomad cluster"
  machine_type = "n1-node-96-624"
  can_ip_forward = true
  tags = ["minimal-gce-example-com-k8s-io-role-node"]
}

# create a compute node group resource. Set size to 1 and use the node template resource id
resource "google_compute_node_template" "name_1" {
  name_prefix = "n1-node-${format("%02d", count.index+1)}"
  description = "a node template to test the Nomad cluster"
  machine_type = "n1-node-96-624"
  can_ip_forward = true
  tags = ["minimal-gce-example-com-k8s-io-role-node"]
}
