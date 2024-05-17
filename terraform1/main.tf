terraform {
  required_providers {
    google = {
      version = "~> 5.21.0"
    }
  }

}

provider "google" {
  region      = "europe-west9"
}

resource "google_project" "my_project" {
  name       = "IAC-Lucienx"
  project_id = "${var.project}-${random_string.lower.result}"
  billing_account = "010380-2EDC1B-1F6EF4"
  auto_create_network = false
}
