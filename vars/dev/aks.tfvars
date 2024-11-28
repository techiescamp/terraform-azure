# Resource Group
resource_group_location = "westus2"
resource_group_name     = "techiescamp-dev-rg"
tags = {
  Environment = "Development",
  Project     = "Demo"
}
managed_by = null

# # Virtual Network
# vnetwork_name      = "techiescamp-dev-aks-vnet"
# location           = "westus2"
# vnet_address_space = ["10.0.0.0/8"]

# # Subnet
# subnet_prefix = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
# subnet_names  = ["subnet-public-1", "subnet-private-1", "subnet-public-2", "subnet-private-2"]

# # Network Security Group
# nsg_name = "techiescamp-dev-aks-nsg"

# # Route Table
# route_table_name = "public-route-table"
# route_name       = "internet-route"

# # Azure Kubernetes Service
# cluster_prefix                    = "techiescamp-dev-cluster"
# dns_prefix                        = "techiescamp-dev-dns"
# user_assigned_identity_name       = "aks-managed-identity"
# role_assignment_scope             = ""
# role_definition_name              = "Network Contributor"
# image_cleaner_enabled             = false
# kubernetes_version                = "1.29.2"
# oidc_issuer_enabled               = false
# node_os_channel_upgrade           = "None"
# azure_policy_enabled              = false
# cost_analysis_enabled             = false
# http_application_routing_enabled  = true
# open_service_mesh_enabled         = false
# private_cluster_enabled           = false
# role_based_access_control_enabled = true
# run_command_enabled               = false
# sku_tier                          = "Free"
# default_node_pool_name            = "agentpool"
# vm_size                           = "Standard_D2_v2"
# node_count                        = 1
# subnet_ids                        = ""
# temp_rotation_name                = "tmppool"
# enable_host_encryption            = false
# max_pods                          = 110
# enable_node_public_ip             = true
# os_sku                            = "Ubuntu"
# ultra_ssd_enabled                 = false
# only_critical_addons_enabled      = false
# os_disk_size_gb                   = 30
# os_disk_type                      = "Managed"
# username                          = "azureuser"
# network_plugin                    = "kubenet"
# load_balancer_sku                 = "standard"
# service_cidr                      = "192.168.0.0/16"
# dns_service_ip                    = "192.168.1.0"
# custom_node_pool_name             = "internal"

# # SSH
# resource_group_id                 = ""
