# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }


# resource "google_project_service_identity" "gke_sa" {
#   provider = google-beta
#   project  = var.project_id
#   service  = "container.googleapis.com"
# }

module "gke_cluster" {
  source      = "./modules/gke_cluster"
  cluster_name = var.cluster_name
  region       = var.region
  project_id   = var.project_id
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count

  # Uncomment and pass additional variables as needed
  # cluster_ipv4_cidr_block = var.cluster_ipv4_cidr_block
  # services_ipv4_cidr_block = var.services_ipv4_cidr_block
  # pod_ipv4_cidr_block = var.pod_ipv4_cidr_block
  # service_ipv4_cidr_block = var.service_ipv4_cidr_block
  # enable_private_nodes = var.enable_private_nodes
  # enable_private_endpoint = var.enable_private_endpoint
  # master_ipv4_cidr_block = var.master_ipv4_cidr_block
}

# resource "google_container_node_pool" "primary_nodes" {
#   provider = google
#   name     = "${var.cluster_name}-pool-01"
#   location = var.region
#   project  = var.project_id
#   cluster  = google_container_cluster.primary.name

#   node_count = var.initial_node_count

#   autoscaling {
#     min_node_count = var
