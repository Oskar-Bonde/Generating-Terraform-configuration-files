terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = "${file("account.json")}"
  project     = "my-project"
  region      = "us-central1"
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name                    = "my-autoscaler"
  region                  = "us-central1"
  target                  = "https://www.googleapis.com/compute/v1/projects/my-project/zones/us-central1-a/instances/my-instance"
  autoscaling_policy_body = <<EOF
{
  "cpuUtilization": {
    "utilizationTarget": 0.5
  },
  "coolDownPeriodSec": 60,
  "maxNumReplicas": 10,
  "minNumReplicas": 1
}

