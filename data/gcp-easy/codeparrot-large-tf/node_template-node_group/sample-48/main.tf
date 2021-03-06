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
resource "google_compute_node_template" "name_0" {
  name = "my-node-template"
  region = "us-central1"

  node_type = "n1-standard-1"

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
resource "google_compute_node_group_manager" "name_1" {
  name = "my-node-group-manager"
  zone = "us-central1-a"

  node_template = google_compute_node_template.name_0.id
  base_instance_name = "vm"

  version {
    instance_template = google_compute_instance.vm_instance.id
  }

  target_pools = [
    google_compute_target_pool.default.id,
  ]

  auto_healing_policies {
    health_check      = google_compute_health_check.health_check.id
    initial_delay_sec = "30"
    max_instances       = "2"
  }

  depends_on = [
    google_project_service.compute,
    google_kms_crypto_key_iam_binding.crypto-key-iam,
    google_project_iam_member.service-account-user,
    google_project_iam_member.service-account-key-admin,
    google_project_iam_member.service-account-compute,
    google_project_iam_member.service-account-key-iam,
    google_project_iam_member.service-account-storage-admin,
    google_project_iam_member.service-account-storage-key-iam,
    google_project_iam_member.service-account-service-account,
    google_project_iam_member.service-account-user,
    google_project_iam_member.service-account-v1,
  ]
}

