variable "project_id" {
  description = "The GCP project ID to deploy resources into."
  type        = string
}

variable "region" {
  description = "Default region for Google Cloud resources (e.g., us-central1)."
  type        = string
}

variable "bucket_name" {
  description = "Globally unique name for the bucket (3-63 chars, lowercase, start and end with letter/number):contentReference[oaicite:5]{index=5}."
  type        = string
}

variable "location" {
  description = "Bucket location (multi-region like \"US\" or specific region like \"us-central1\")."
  type        = string
}

variable "storage_class" {
  description = "Storage class (STANDARD, NEARLINE, COLDLINE, ARCHIVE)."
  type        = string
  default     = "STANDARD"
}

variable "force_destroy" {
  description = "Whether to delete all objects in the bucket when destroying it."
  type        = bool
  default     = false
}

variable "enable_versioning" {
  description = "Enable object versioning (strongly recommended for recovery):contentReference[oaicite:6]{index=6}."
  type        = bool
  default     = false
}

variable "lifecycle_days" {
  description = "Days until objects are deleted by the lifecycle rule."
  type        = number
  default     = 30
}

variable "environment" {
  description = "Label for environment (e.g., dev, prod)."
  type        = string
}
