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

# data block with google compute zones in europe west4. The status must be UP and set project to terraform-338909
data "google_compute_zones" "name_0" {
  zone1 = "europe-west4-a"
}

# compute instance.Use the first available compute zone. Type f1 micro, debian 9 image, default network interface and give name
}

