data "google_project" "project" {
  project_id = var.project_id
}

data "google_compute_network" "network" {
  name    = var.network_name
  project = var.project_id
}

# data "google_compute_subnetwork" "subnet" {
#   name    = var.subnetwork_name
#   region  = var.region
#   project = var.project_id
# }

# data "google_container_engine_versions" "versions" {
#   location = var.region
#   project  = var.project_id
# }

# # Optional: Get information about an existing service account
# data "google_service_account" "gke_sa" {
#   project    = var.project_id
#   account_id = var.gke_service_account_id
#   # Optional: If the display name is known, you can also use:
#   # display_name = "My GKE Service Account"
# }
