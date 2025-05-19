variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region (e.g., us-central1)"
  type        = string
}

variable "zone" {
  description = "GCP zone (e.g., us-central1-a)"
  type        = string
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
}

variable "machine_type" {
  description = "GCP VM machine type (e.g., e2-medium)"
  type        = string
}
