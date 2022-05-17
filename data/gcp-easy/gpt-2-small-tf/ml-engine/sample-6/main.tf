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
  database_version = "POSTGRES_12"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-b"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-c"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-d"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-e"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-f"
  name = "my-sql-instance-%{random_suffix}"
  username = "my-sql-user"
  password = "my-sql-password"
  db_name = "my-sql-db"
  instance_class = "db.t2.micro"
  zone = "us-central1-b"
  name = "my-sql
}

