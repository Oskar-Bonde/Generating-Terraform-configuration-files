terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1-standard and the instance
resource "google_compute_instance" "name_0" {
  name = "my-vm-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# resource block, sql database instance. Set database version to MYSQL_5_7 and enable deletion protection. Also, use setting tier db-f1-micro, and the instance
# resource block, sql database instance. Set database version to MYSQL_5_7 and enable deletion protection.
resource "google_compute_instance" "name_1" {
  name = "my-vm-instance-linux-http"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# create a sql database. Use the sql database instance name defined in the previous block.
resource "google_compute_instance" "name_2" {
  name = "my-vm-instance-linux-http-http"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

