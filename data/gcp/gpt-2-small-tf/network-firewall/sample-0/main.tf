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

# create compute network, give it a name and auto create subnetworks
resource "google_compute_subnetwork" "name_0" {
  name                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web
}

