terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1.0.0.0/0
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance1-%%{random_suffix}"
  machine_type = "f1-micro"

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
# Terraform configuration file
# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

