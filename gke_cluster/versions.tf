/* terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
  #credentials = file("path/to/your/service-account.json")
}
 */

# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
  }

  required_version = ">= 0.14"
}



# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "~> 4.47.0" # Or a more specific version like "5.10.0"
#     }
#     # google-beta = {
#     #   source  = "hashicorp/google-beta"
#     #   version = "~> 5.0" # Should generally match the google provider's major version
#     # }
#   }
#   #required_version = ">= 1.0" # Specify the minimum Terraform version required
# }
