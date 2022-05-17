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

# ml engine model resource
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  region = "us-central1"
  database_version = "POSTGRES_13"
  instance_class = "db.t2.micro"
  name = "my-sql-instance-%{random_suffix}"
  password = "my-sql-password"
  settings {
    tier = "db-server-2"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-3"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-4"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-5"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-6"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-7"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-8"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-9"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-10"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-11"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-12"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-13"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-14"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-15"
    database_flags = "ENABLED"
  }
  deletion_protection = "true"
  settings {
    tier = "db-server-16"
    database_flags = "ENABLED"
  }
 
}

