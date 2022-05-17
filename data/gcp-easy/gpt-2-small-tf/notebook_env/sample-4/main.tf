terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# create google notebooks enviroment
resource "google_notebooks_enviroment_config" "name_0" {
  name = "my-notebooks-enviroment-%{random_suffix}"
  enviroment_config {
    name = "my-enviroment-%{random_suffix}"
  }
}

