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
resource "google_sql_database" "name_0" {
  name = "my-database"
  region = "europe-west4"
  database_version = "POSTGRES_12"
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "my-database-db-f1-micro"
  }
  deletion_protection = false
  settings {

}

