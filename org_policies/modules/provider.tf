terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.5.0"
    }
  }

  backend "remote" {
    organization = "your-organization-name"

    workspaces {
      name = "your-workspace-name"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = env.GCP_SA_KEY_JSON
}

resource "google_compute_instance" "default" {
  name         = "example-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
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