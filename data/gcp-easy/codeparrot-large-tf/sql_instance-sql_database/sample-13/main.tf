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

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-database-instance"
  region = "us-central1"

  database_version = "POSTGRES_13"

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      authorized_networks {
        name = "PublicIp"
        value = "10.0.0.5"
      }
    }

    database_flags {
      name  = "autovacuum"
      value = "on"
    }

    database_flags {
      name  = "max_connections"
      value = "10"
    }

    database_flags {
      name  = "user_autovacuum"
      value = "on"
    }

    database_flags {
      name  = "log_checkpoints"
      value = "on"
    }

    database_flags {
      name  = "zone_awareness_mode"
      value = "off"
    }

    database_flags {
      name  = "maintenance_window"
      value = "sun:10:30-sun:10:30"
    }

    disk_autoresize = "true"

    ip_configuration {
      ipv4_enabled    = "true"
      private_network = "projects/${var.project_id}/global/networks/default"
    }

    # Add an external IP to allow SSH access
    access_config {
      # add external ip to allow SSH access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTP access
    access_config {
      # add external ip to allow HTTP access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTPS access
    access_config {
      # add external ip to allow HTTPS access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTPS access
    access_config {
      # add external ip to allow HTTPS access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTPS access
    access_config {
      # add external ip to allow HTTPS access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTPS access
    access_config {
      # add external ip to allow HTTPS access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTPS access
    access_config {
      # add external ip to allow HTTPS access
      dynamic "access_config" {
        for_each = var.access_config_parameters
        content {
          nat_ip       = access_config.value.nat_ip
        }
      }
    }

    # Add an external IP to allow HTTPS access
    access_config {
      # add external ip to allow HTTPS access
      dynamic "access_config
}

# create a sql database
}

