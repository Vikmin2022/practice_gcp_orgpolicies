provider "google" {
  project     = "My First Projectvar"
  region      = "us-central1"
  credentials = base64decode(var.GCP_SA_KEY_JSON_base64)
}


# provider "google" {
#   project     = "TF_VAR_project_id"
#   region      = "us-central1"
# }