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

# create composer environment in region us-central1#
resource "google_compute_environment" "name_0" {
  name = "my-env-%{random_suffix}"
  region = "us-central1"
  zone = "us-central1-a"
  name = "my-env-%{random_suffix}"
  tags = ["my-env-%{random_suffix}" ]
  network = "default"    
  source_tags = ["my-env-%{random_suffix}" ]
  service_account {
    email = google_service_account.compute_instance.email
  }
}

