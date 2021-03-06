terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name                    = "my-autoscaler"
  region                  = "us-central1"
  target                  = google_compute_instance_group_manager.default.self_link
  autoscaling_policy_body = <<EOF
{
  "maxNumReplicas": 10,
  "coolDownPeriodSec": 60,
  "cpuUtilization": {
    "utilizationTarget": 0.8
  },
  "loadBalancingUtilization": {
    "utilizationTarget": 0.8
  }
}

