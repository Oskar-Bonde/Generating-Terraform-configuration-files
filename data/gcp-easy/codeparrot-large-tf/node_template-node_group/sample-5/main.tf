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

# create a node template
resource "google_compute_instance_template" "name_0" {
  name_prefix  = "node-template-"
  machine_type = "f1-micro"

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"    
    access_config {
    }
  }
}

# create a compute node group resource
resource "google_compute_instance_group_manager" "name_1" {
  name = "my-group-manager-${random_suffix}"
  zone = "us-central1-a"

  base_instance_name = "my-instance-${random_suffix}"
  zone        = "us-central1-a"

  version {
    instance_template = google_compute_instance_template.name_0.id
  }

  target_size  = 1
  named_port {
    name = "http"
    port = "80"
  }

  # auto_healing_policies {
  #   health_check      = google_compute_health_check.health_check.id
  #   initial_delay_sec = 30
  # }

  # boot_disk {
  #   initialize_params {
  #     image = "debian-cloud/debian-9"
  #     type  = "pd-standard"
  #     size  = 10
  #   }
  # }

  # network_interface {
  #   network = "default"
  #   access_config {
  #     }
  # }

  # metadata = {
  #   foo = "bar"
  # }

  # service_account {
  #   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  # }
}

