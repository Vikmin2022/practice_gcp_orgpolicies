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
  project     = "zeta-handler-369021"
  region      = "us-central1"
}



# provider "google" {
#   project     = "TF_VAR_project_id"
#   region      = "us-central1"
# }