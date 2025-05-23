variable "project_id" {
  type        = string
  description = "The GCP project ID where the GKE cluster will be created."
}

variable "region" {
  type        = string
  description = "The GCP region for the GKE cluster."
  default     = "us-central1"
}

variable "cluster_name" {
  type        = string
  description = "The name of the GKE cluster."
}

variable "network_name" {
  type        = string
  description = "The name of the VPC network where the cluster will be created."
  # Consider adding a validation rule to ensure it's not empty
  # validation {
  #   condition = length(var.network_name) > 0
  #   error_message = "The network_name cannot be empty."
  # }
}

variable "subnetwork_name" {
type        = string
description = "The name of the subnetwork where the cluster nodes will be created."
}

variable "remove_default_node_pool" {
  type        = bool
  description = "Whether to remove the default node pool after cluster creation."
  default     = true
}

variable "initial_node_count" {
type        = string
description = "The name of the subnetwork where the cluster nodes will be created."
}
#   # Consider adding a validation rule
#   # validation {
#   #   condition = length(var.subnetwork_name) > 0
#   #   error_message = "The subnetwork_name cannot be empty."
#   # }
# }

# variable "initial_node_count" {
#   type        = number
#   description = "The initial number of nodes in the default node pool."
#   default     = 2
# }

# variable "node_machine_type" {
#   type        = string
#   description = "The machine type for the nodes in the default node pool."
#   default     = "e2-medium"
# }

# variable "node_disk_size_gb" {
#   type        = number
#   description = "The size of the boot disk for nodes in the default node pool (in GB)."
#   default     = 100
# }

# variable "node_disk_type" {
#   type        = string
#   description = "The type of the boot disk for nodes in the default node pool (e.g., pd-standard, pd-ssd)."
#   default     = "pd-standard"
# }

# variable "min_node_count" {
#   type        = number
#   description = "The minimum number of nodes for autoscaling in the default node pool."
#   default     = 1
# }

# variable "max_node_count" {
#   type        = number
#   description = "The maximum number of nodes for autoscaling in the default node pool."
#   default     = 5
# }

# variable "environment" {
#   type        = string
#   description = "An environment identifier tag (e.g., dev, staging, prod)."
#   default     = "default"
# }

# variable "cluster_ipv4_cidr_block" {
#   type        = string
#   description = "The IP range in CIDR notation for the cluster control plane and nodes."
#   default     = "10.0.0.0/14"
# }

# variable "services_ipv4_cidr_block" {
#   type        = string
#   description = "The IP range in CIDR notation for the services running in the cluster."
#   default     = "10.4.0.0/14"
# }

# variable "use_ip_aliases" {
#   type        = bool
#   description = "Whether to enable IP aliases for the cluster."
#   default     = true
# }

# variable "pod_ipv4_cidr_block" {
#   type        = string
#   description = "The IP range in CIDR notation for pod IPs (used if use_ip_aliases is false)."
#   default     = "10.1.0.0/16"
# }

# variable "service_ipv4_cidr_block" {
#   type        = string
#   description = "The IP range in CIDR notation for service IPs (used if use_ip_aliases is false)."
#   default     = "10.2.0.0/16"
# }

# variable "enable_private_nodes" {
#   type        = bool
#   description = "Whether to create nodes with only internal IP addresses."
#   default     = false
# }

# variable "enable_private_endpoint" {
#   type        = bool
#   description = "Whether to create a private endpoint for the cluster control plane."
#   default     = false
# }

# variable "master_ipv4_cidr_block" {
#   type        = string
#   description = "The IP range in CIDR notation for the master's private endpoint (required if enable_private_endpoint is true)."
#   default     = "172.16.0.0/28"
# }

# variable "create_secondary_node_pool" {
#   type        = bool
#   description = "Whether to create a secondary, optional node pool."
#   default     = false
# }

# variable "secondary_node_count" {
#   type        = number
#   description = "The desired number of nodes in the secondary node pool (if created)."
#   default     = 1
# }

# variable "secondary_node_machine_type" {
#   type        = string
#   description = "The machine type for the nodes in the secondary node pool (if created)."
#   default     = "n1-standard-2"
# }

# variable "secondary_node_disk_size_gb" {
#   type        = number
#   description = "The size of the boot disk for nodes in the secondary node pool (if created, in GB)."
#   default     = 100
# }

# variable "secondary_node_disk_type" {
#   type        = string
#   description = "The type of the boot disk for nodes in the secondary node pool (if created)."
#   default     = "pd-standard"
# }

# variable "gke_service_account_id" {
#   type        = string
#   description = "(Optional) The account ID of an existing service account to use for the GKE nodes."
#   default     = null
# }
