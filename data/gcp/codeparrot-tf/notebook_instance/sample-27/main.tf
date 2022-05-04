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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name = "my-notebook-instance-%%{random_suffix}"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["e2-medium", "e2-micro", "e2-standard"]
  can_ip_forward = true
  can_ip_protocol = "UDP"
  can_ip_address_type = "INTERNAL"
  tags = ["e2-medium", "e2-micro", "e2-standard"]
  can_ip_address = "true"
  can_ip_prefix_list = ["default"]
  can_ip_prefix_list_count = 1
  metadata = {
    "cluster-name" = "e2-micro"
  }
  can_ip_allocation_for_subnetwork = true
  metadata_startup_script = "echo hi > /test.txt"
}
