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
        name = "my-public-ip-range"
        value = "10.128.0.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.64.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.128.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.96.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.97.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.98.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.99.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.100.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.101.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.102.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.103.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.104.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.105.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.106.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.107.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.108.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.109.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-range"
        value = "10.128.110.0/28"
      }
    }
    ip_configuration {
      authorized_networks {
        name =
}

# create a sql database
}

