terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create a CaPool resource
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "my-instance-group-manager"
  region = "${var.region}"
  base_instance_name = "my-base-instance-name"
  instance_template = "${google_compute_instance_template.my-instance-template.self_link}"
  target_size = 1
}

