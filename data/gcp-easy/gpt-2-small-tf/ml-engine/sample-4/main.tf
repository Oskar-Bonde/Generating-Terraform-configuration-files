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
  name = "my-ml-instance-%{random_suffix}"
  database_version = "POSTGRES_9_6"
  instance_class = "db.t2.micro"
  zone = "us-central1-a"
  name = "my-ml-instance-%{random_suffix}"
  region = "us-central1"
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
  }
  deletion_protection = false
  settings {
    tier = "db.t2.micro"
}

