# Resource Group
module "resource_group" {
  source = "../../modules/resource-group"

  resource_group_location = var.resource_group_location
  resource_group_name     = var.resource_group_name
  tags                    = var.tags
  managed_by              = var.managed_by
}

# Virtual Network
module "virtual_network" {
  source = "../../modules/vnet"

  resource_group_name = var.resource_group_name
  vnetwork_name       = var.vnetwork_name
  location            = var.location
  vnet_address_space  = var.vnet_address_space
  tags                = var.tags
  subnet_prefix       = var.subnet_prefix
  subnet_names        = var.subnet_names
  nsg_name            = var.nsg_name
  route_table_name    = var.route_table_name
  route_name          = var.route_name

  depends_on = [module.resource_group]
}

# # Azure Kubernetes Cluster
# module "kubernetes_cluster" {
#   source = "../../modules/aks"

#   resource_group_name               = var.resource_group_name
#   location                          = var.location
#   cluster_prefix                    = var.cluster_prefix
#   dns_prefix                        = var.dns_prefix
#   user_assigned_identity_name       = var.user_assigned_identity_name
#   role_assignment_scope             = module.virtual_network.route_table_id
#   role_definition_name              = var.role_definition_name
#   image_cleaner_enabled             = var.image_cleaner_enabled
#   kubernetes_version                = var.kubernetes_version
#   oidc_issuer_enabled               = var.oidc_issuer_enabled
#   node_os_channel_upgrade           = var.node_os_channel_upgrade
#   azure_policy_enabled              = var.azure_policy_enabled
#   cost_analysis_enabled             = var.cost_analysis_enabled
#   http_application_routing_enabled  = var.http_application_routing_enabled
#   open_service_mesh_enabled         = var.open_service_mesh_enabled
#   private_cluster_enabled           = var.private_cluster_enabled
#   role_based_access_control_enabled = var.role_based_access_control_enabled
#   run_command_enabled               = var.run_command_enabled
#   sku_tier                          = var.sku_tier
#   default_node_pool_name            = var.default_node_pool_name
#   vm_size                           = var.vm_size
#   node_count                        = var.node_count
#   subnet_ids                        = module.virtual_network.subnet_ids["subnet-public-1"]
#   temp_rotation_name                = var.temp_rotation_name
#   enable_host_encryption            = var.enable_host_encryption
#   max_pods                          = var.max_pods
#   enable_node_public_ip             = var.enable_node_public_ip
#   os_sku                            = var.os_sku
#   ultra_ssd_enabled                 = var.ultra_ssd_enabled
#   only_critical_addons_enabled      = var.only_critical_addons_enabled
#   os_disk_size_gb                   = var.os_disk_size_gb
#   os_disk_type                      = var.os_disk_type
#   username                          = var.username
#   network_plugin                    = var.network_plugin
#   load_balancer_sku                 = var.load_balancer_sku
#   service_cidr                      = var.service_cidr
#   dns_service_ip                    = var.dns_service_ip
#   custom_node_pool_name             = var.custom_node_pool_name
#   resource_group_id                 = module.resource_group.resource_group_id

#   depends_on = [module.virtual_network]
# }