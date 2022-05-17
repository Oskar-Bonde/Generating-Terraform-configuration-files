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
  instance_zone = "us-central1-a"
  name = "my-sql-instance-%{random_suffix}"
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  instance_name = "my-sql-instance-%{random_suffix}"
  password = "my-sql-password"
  region = "us-central1"
  # The database is already initialized
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/sql/docs/instances#installing-db-with-google-sql-database
  # https://cloud.google.com/
}

