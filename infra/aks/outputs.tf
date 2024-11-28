# Resource Group

output "resource_group_name" {
  description = "The name of the created Azure Resource Group from the child module"
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "The ID of the created Azure Resource Group from the child module"
  value       = module.resource_group.resource_group_id
}

output "resource_group_location" {
  description = "The location of the Azure Resource Group from the child module"
  value       = module.resource_group.resource_group_location
}

# Virtual Network
output "vnet_name" {
  description = "The name of the Azure Virtual Network from the child module"
  value       = module.virtual_network.vnet_name
}

output "vnet_id" {
  description = "The ID of the Azure Virtual Network from the child module"
  value       = module.virtual_network.vnet_id
}

output "vnet_address_space" {
  description = "The address space of the Azure Virtual Network from the child module"
  value       = module.virtual_network.vnet_address_space
}

output "vnet_location" {
  description = "The location of the Azure Virtual Network from the child module"
  value       = module.virtual_network.vnet_location
}

# Subnet
output "subnet_ids" {
  description = "IDs of the subnets created in the child module"
  value       = module.virtual_network.subnet_ids
}

output "subnet_names" {
  description = "Names of the subnets created in the child module"
  value       = module.virtual_network.subnet_names
}

output "subnet_prefixes" {
  description = "Address prefixes of the subnets created in the child module"
  value       = module.virtual_network.subnet_prefixes
}

# Network Secuity Group
output "nsg_id" {
  description = "ID of the Network Security Group from the module"
  value       = module.virtual_network.nsg_id
}

output "nsg_name" {
  description = "Name of the Network Security Group from the module"
  value       = module.virtual_network.nsg_name
}

output "associated_subnets" {
  description = "Subnets associated with the Network Security Group"
  value       = module.virtual_network.associated_subnets
}

# Route Table
output "route_table_id" {
  description = "The ID of the created route table"
  value       = module.virtual_network.route_table_id
}

output "internet_route_id" {
  description = "The ID of the internet access route"
  value       = module.virtual_network.internet_route_id
}

# # AKS Cluster
# output "kubernetes_cluster_name" {
#   value = module.kubernetes_cluster.kubernetes_cluster_name
# }

# output "client_certificate" {
#   value     = module.kubernetes_cluster.client_certificate
#   sensitive = true
# }

# output "client_key" {
#   value     = module.kubernetes_cluster.client_key
#   sensitive = true
# }

# output "cluster_ca_certificate" {
#   value     = module.kubernetes_cluster.cluster_ca_certificate
#   sensitive = true
# }

# output "cluster_password" {
#   value     = module.kubernetes_cluster.cluster_password
#   sensitive = true
# }

# output "cluster_username" {
#   value     = module.kubernetes_cluster.cluster_username
#   sensitive = true
# }

# output "host" {
#   value     = module.kubernetes_cluster.host
#   sensitive = true
# }

# output "kube_config" {
#   value     = module.kubernetes_cluster.kube_config
#   sensitive = true
# }





