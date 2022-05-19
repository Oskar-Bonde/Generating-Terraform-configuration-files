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
  name = "gce-instance-group-manager-test"
  region = "${var.region}"
  base_instance_name = "gce-instance-group-manager-test"
  target_size = 1
  version {
    instance_template = "${google_compute_instance_template.gce_instance_template.self_link}"
  }
}

