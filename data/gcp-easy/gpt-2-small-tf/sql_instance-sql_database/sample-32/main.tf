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
resource "google_sql_database" "name_0" {
  name = "my-sql-database-%{random_suffix}"
  region = "us-central1"
  project = "my-project"
  database_version = "POSTGRES_12"
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
  }
  deletion
}

# create a sql database
}

