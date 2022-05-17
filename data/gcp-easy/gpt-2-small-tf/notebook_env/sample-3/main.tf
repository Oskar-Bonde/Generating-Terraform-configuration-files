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
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-enviroment-vm"
  enviroment_vm_id = "vhds"
  notebook_config {
    notebook_type = "vm.x86_64"
    notebook_size = "512mb"
    notebook_region = "us-central1"
  }
}

