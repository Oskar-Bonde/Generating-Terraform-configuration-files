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

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-database-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  region = "us-central1"
  database_version = "POSTGRES_12"
  zone = "us-central1-a"
  collation {
    name = "my-sql-database-instance-%{random_suffix}"
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

  deletion_protection =
}

