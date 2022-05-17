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

# create compute network, give it a name and set auto create subnetworks to false
resource "google_compute_subnetwork" "name_0" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
}

