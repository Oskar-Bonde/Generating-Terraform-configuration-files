terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name = "my-autoscaler"
  region = "us-central1"
  target = "my-target"
  autoscaling_policy {
    min_replicas = 1
    max_replicas = 10
    cool_down_period_sec = 60
    cpu_utilization {
      target = 0.5
    }
  }
}

