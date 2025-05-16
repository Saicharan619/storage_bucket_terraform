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

(* resource "google_storage_bucket_object" "empty_folder" {
  name   = "empty_folder" # folder name should end with '/'
  content = " Hellosaicharan.txt"            # content is ignored but should be non-empty
  bucket = google_storage_bucket.mug.name
} *)
