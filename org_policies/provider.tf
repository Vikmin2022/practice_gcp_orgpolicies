provider "google" {
  project     = "My First Projectvar"
  region      = "us-central1"
  credentials = base64decode(env.GCP_SA_KEY_JSON)
}


# provider "google" {
#   project     = "TF_VAR_project_id"
#   region      = "us-central1"
# }