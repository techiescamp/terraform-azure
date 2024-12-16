# Resource Group
variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  description = "Name for the Resource Group."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the Resource Group"
}

variable "managed_by" {
  type        = string
  description = "The ID of the resource that manages this resource"
}

# Virtual Network

variable "vnetwork_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "location" {
  type        = string
  description = "Location of the Virtual Network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the Virtual Network"
}

# subnet
variable "subnet_prefix" {
  description = "Prefix for subnet addresses"
  type        = list(string)
}

variable "subnet_names" {
  description = "Names for subnets"
  type        = list(string)
}

# Network Security Group

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

# Route Table

variable "route_table_name" {
  description = "Name for the Route Table"
  type        = string
}

variable "route_name" {
  description = "Name for the Route."
  type        = string
}

# # AKS cluster
# variable "cluster_prefix" {
#   description = "Prefix for Kubernetes cluster name"
#   type        = string
# }

# variable "dns_prefix" {
#   description = "Prefix for Kubernetes cluster DNS"
#   type        = string
# }

# variable "user_assigned_identity_name" {
#   description = "Name for the User Assigned Identity"
#   type        = string
# }

# variable "role_assignment_scope" {
#   description = "Scope for the role assignment"
#   type        = string
# }

# variable "role_definition_name" {
#   description = "Name of the role definition"
#   type        = string
# }


# variable "image_cleaner_enabled" {
#   description = ""
#   type        = bool
# }

# variable "kubernetes_version" {
#   description = "Version of Kubernetes"
#   type        = string
# }

# variable "oidc_issuer_enabled" {
#   description = ""
#   type        = bool
# }

# variable "node_os_channel_upgrade" {
#   description = ""
#   type        = string
# }

# variable "azure_policy_enabled" {
#   description = ""
#   type        = bool
# }

# variable "cost_analysis_enabled" {
#   description = ""
#   type        = bool
# }

# variable "http_application_routing_enabled" {
#   description = "Enable HTTP application routing"
#   type        = bool
# }

# variable "open_service_mesh_enabled" {
#   description = ""
#   type        = bool
# }

# variable "private_cluster_enabled" {
#   description = "Enable private cluster"
#   type        = bool
# }

# variable "role_based_access_control_enabled" {
#   description = "Enable RBAC"
#   type        = bool
# }

# variable "run_command_enabled" {
#   description = ""
#   type        = bool
# }

# variable "sku_tier" {
#   description = "Tier of the cluster SKU"
#   type        = string
# }

# # Node Pool Configuration
# variable "default_node_pool_name" {
#   description = "Name for the default node pool name"
#   type        = string
# }

# variable "vm_size" {
#   description = "VM size for the default node pool"
#   type        = string
# }

# variable "node_count" {
#   description = "Number of nodes in the default node pool"
#   type        = number
# }

# variable "subnet_ids" {
#   description = ""
#   type        = string
# }

# variable "temp_rotation_name" {
#   description = ""
#   type        = string
# }

# variable "enable_host_encryption" {
#   description = ""
#   type        = bool
# }

# variable "max_pods" {
#   description = ""
#   type        = number
# }

# variable "enable_node_public_ip" {
#   description = "Enable public IP for nodes"
#   type        = bool
# }

# variable "os_sku" {
#   description = "OS SKU for the nodes"
#   type        = string
# }

# variable "ultra_ssd_enabled" {
#   description = ""
#   type        = bool
# }

# variable "only_critical_addons_enabled" {
#   description = ""
#   type        = bool
# }

# variable "os_disk_size_gb" {
#   description = "OS disk size in GB"
#   type        = number
# }

# variable "os_disk_type" {
#   description = ""
#   type        = string
# }

# variable "username" {
#   description = "Admin username for the Linux profile"
#   type        = string
# }

# variable "network_plugin" {
#   description = ""
#   type        = string
# }

# variable "load_balancer_sku" {
#   description = ""
#   type        = string
# }

# variable "service_cidr" {
#   description = "CIDR block for the service network"
#   type        = string
# }

# variable "dns_service_ip" {
#   description = "DNS service IP"
#   type        = string
# }

# # Node Pool
# variable "custom_node_pool_name" {
#   description = ""
#   type        = string
# }

# # SSH
# variable "resource_group_id" {
#   description = ""
#   type        = string
# }

