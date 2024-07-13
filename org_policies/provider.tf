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
  project     = "TF_VAR_project_id"
  region      = "us-central1"
  credentials = base64decode(env.GCP_SA_KEY_JSONa)
}



# provider "google" {
#   project     = "TF_VAR_project_id"
#   region      = "us-central1"
# }