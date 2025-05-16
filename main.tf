terraform {
  required_providers {
    ipv4google = {
      source = "wiardvanrij/ipv4google"
      version = "2.0.0"
    }
  }
}


provider "google" {
  # Configuration options
  
  project = "symbolic-pipe-457709-n9"
}


resource "google_storage_bucket" "instance_state_file_bucket" {
   
    name = "hr375softility"
    location = "US-WEST1"
  
}


