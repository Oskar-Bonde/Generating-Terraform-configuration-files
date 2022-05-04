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
  name = "my-sql-instance"
  region = "us-central1"
  database_version = "POSTGRES_12"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.0.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.1.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.2.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.3.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.4.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.5.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.6.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.7.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.8.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.9.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.10.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.11.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.12.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.13.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.14.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.15.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.16.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.17.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.18.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.19.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value = "10.128.20.0/24"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "default"
        value =
}

# create a sql database
}

