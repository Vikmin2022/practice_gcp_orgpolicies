terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.5.0"
    }
  }

  backend "remote" {
    organization = "vprotsenko2007-org"

    workspaces {
      name = "practice_gcp_orgpolicies"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.google_credentials
}

resource "google_compute_instance" "default" {
  name         = "example-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240617"
    }
  }

  network_interface {
    network    = "default"
    access_config {
      // Ephemeral IP
    }
  }

 
}

resource "google_storage_bucket" "default" {
  name     = "example-bucket-${var.project_id}"
  location = var.region
}