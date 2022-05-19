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
resource "google_compute_region_autoscaler" "name_0" {
  name            = "my-autoscaler"
  region          = "us-central1"
  target          = "my-target-pool"
  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 1
    cool_down_period_sec = 60
    cpu_utilization {
      target = 0.8
    }
  }
}

