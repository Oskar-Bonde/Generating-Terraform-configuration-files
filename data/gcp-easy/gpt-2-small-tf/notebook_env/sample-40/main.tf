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

# create google notebooks enviroment#
resource "google_notebooks_enviroment" "name_0" {
  name = "my-notebooks-enviroment-vm"
  enviroment_vm_id = "vhds"
  enviroment_vm_startup_script = "python3.6"
}

