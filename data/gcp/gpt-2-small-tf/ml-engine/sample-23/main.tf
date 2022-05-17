terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# ml engine model resource. With default name and in europe west 4 regions
resource "google_sql_database_instance" "name_0" {
  name = "my-ml-instance"
  database = google_sql_database.ml.name
  region = "europe-west4"
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
  deletion_protection = false

}

