terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name = "node-template"
  machine_type = "n1-standard-1"
  can_ip_forward = false
  tags = ["http-server", "https-server"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete = true
    boot = true
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8g+pLJf5OqRmX/z1aDvB+yTmO7p2JEuFV7Qbzr5Zgw5w8fj+/jZtR+3qc/QX8Znhg/Ot/p+1lwjRz/Z+T7vZ/pXZ7+Z4dD5f/7+F+s3X/GQZ+3x+1l+f3iRnSv5yZ+fj+fj+/j+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+fj+
}

