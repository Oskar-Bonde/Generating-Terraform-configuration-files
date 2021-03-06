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
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance"
  instance_class = "db.t2.micro"
  zone = "us-central1-b"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-c"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-d"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-e"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-g"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-h"
  name = "my-sql-instance-%{random_suffix}"
  username = "root"
  password = "root"
  db_name = "my-sql-instance-%{random_suffix}"
  instance_class = "db.t2.micro"
  zone = "us-central1-i"
  name = "my-sql-instance-%{random_suffix}"
  username
}

