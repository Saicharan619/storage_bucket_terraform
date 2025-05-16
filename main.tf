terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.18.1"
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


