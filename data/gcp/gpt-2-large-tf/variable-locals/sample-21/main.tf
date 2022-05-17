terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-disk"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# a string type variable called name with default value "service"
# a string type variable calledservice_account
# a string type variable calledservice_account_key
# a string type variable "service_account_key_file
# a string type variable "service_account_key_file_path
# a string type variable "service_account_key_file_name
# a string type variable "service_account_key_file_value
# a string type variable "service_account_key_file_value_path
# a string type variable "service_account_key_file_value_value_key
# a string type variable "service_account_key_file_value_value_key_file
# a string type variable "service_account_key_file_value_value_key_file_path
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_path
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_path
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value_key_file_value
# a string type variable "service_account_key_file_value_value_key_file_value
}

# local block with a common labels block. service is set to name variable
}

