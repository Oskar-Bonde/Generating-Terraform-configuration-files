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
  name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  deletion_protection = "true"
  depends_on = [
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
    google_sql_database_instance.name_0,
  ]
}

