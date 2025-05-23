# output "cluster_name" {
#   value       = google_container_cluster.primary.name
#   description = "The name of the GKE cluster."
# }

# output "cluster_endpoint" {
#   value       = google_container_cluster.primary.endpoint
#   description = "The public endpoint of the GKE cluster."
# }

# output "cluster_private_endpoint" {
#   value       = google_container_cluster.primary.private_ip_config.0.master_ipv4_cidr_block
#   description = "The private endpoint of the GKE cluster (if private endpoint is enabled)."
#   sensitive   = true # The private IP range itself isn't highly sensitive, but marking it as such is a good practice for internal IPs.
# }

# output "cluster_kubeconfig" {
#   value = <<EOT
# apiVersion: v1
# clusters:
# - cluster:
#     server: ${google_container_cluster.primary.endpoint}
#     certificate-authority-data: ${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}
#   name: ${google_container_cluster.primary.name}
# contexts:
# - context:
#     cluster: ${google_container_cluster.primary.name}
#     user: gke-user-${data.google_project.project.number}-${google_container_cluster.primary.name}
#   name: default
# current-context: default
# kind: Config
# preferences: {}
# users:
# - name: gke-user-${data.google_project.project.number}-${google_container_cluster.primary.name}
#   user:
#     token: PLACEHOLDER_WILL_BE_POPULATED_EXTERNALLY
# EOT
#   description = "The kubeconfig for connecting to the GKE cluster. Note: The token needs to be populated externally."
#   sensitive   = true # Contains sensitive certificate data.
# }

# output "node_pool_names" {
#   value = [
#     google_container_node_pool.primary_nodes.name,
#     (var.create_secondary_node_pool ? google_container_node_pool.secondary_nodes[0].name : null),
#   ]
#   description = "The names of the created node pools."
# }

# output "node_pool_self_links" {
#   value = [
#     google_container_node_pool.primary_nodes.self_link,
#     (var.create_secondary_node_pool ? google_container_node_pool.secondary_nodes[0].self_link : null),
#   ]
#   description = "The self-links of the created node pools."
# }
