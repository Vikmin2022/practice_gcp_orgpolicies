# Data source to get the default VPC network
data "google_compute_network" "default" {
  name = "default"
}

# Data source to get the default subnet in the specified region
data "google_compute_subnetwork" "default" {
  name   = "default"
  region = "us-central1"
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
    network    = data.google_compute_network.default.self_link
    subnetwork = data.google_compute_subnetwork.default.self_link
    access_config {
      // Ephemeral IP
    }
  }

  
}