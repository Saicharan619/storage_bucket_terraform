terraform {
  backend "gcs" {
    bucket  = "terraform-bucket-import"   # Must match the bucket you created in `bucket/`
    prefix  = "vm-state"                  # Folder inside bucket to store state
  }
}
