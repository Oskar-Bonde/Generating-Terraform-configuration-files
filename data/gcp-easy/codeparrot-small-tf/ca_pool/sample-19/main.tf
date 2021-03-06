terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a CaPool resource 
resource "google_compute_instance_pool" "name_0" {
  name = "my-pool-${random_suffix}"
  location = "us-central1-a"
  instance_template {
    machine_type = "f1-micro"
    disk {
      image = "debian-cloud/debian-9"
    }
  }

  auto_healing_policies {
    health_check {
      healthy_threshold = 2
      unhealthy_threshold = 2
      timeout = 3
      target = "HTTP:80/"
    }
  }
}

