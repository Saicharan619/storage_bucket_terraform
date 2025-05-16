provider "google" {
  project = "symbolic-pipe-457709-n9"                  # Your GCP project ID
  
  zone    = "europe-west12-b"
}

resource "google_compute_instance" "sonar" {
  
  }
