# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "test-servers-349208"
  region  = "asia-southeast1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "terraformbucket_9"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
