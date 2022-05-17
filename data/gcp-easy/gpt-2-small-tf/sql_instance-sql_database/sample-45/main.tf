terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google-beta" {
}

# resource block, sql database instance
resource "google_sql_database" "name_0" {
  name = "my-sql-database"
  project = var.project_id
  region = var.region
  database_version = "POSTGRES_9_6"
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier = "db-f1-micro"
    tier_name = "db-f1-micro"
    db_flags = ["--database-flags=--all"]
  }
  deletion_protection = false
  settings {
    tier =
}

# create a sql database
}

