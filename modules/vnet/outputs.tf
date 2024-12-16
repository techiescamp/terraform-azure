# Virtual Network
output "vnet_name" {
  description = "The name of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "The ID of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_address_space" {
  description = "The address space of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}

output "vnet_location" {
  description = "The location of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.location
}

# Subnet
output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = { for key, subnet in azurerm_subnet.subnet : key => subnet.id }
}

output "subnet_names" {
  description = "Names of the created subnets"
  value       = { for key, subnet in azurerm_subnet.subnet : key => subnet.name }
}

output "subnet_prefixes" {
  description = "Address prefixes of the created subnets"
  value       = { for key, subnet in azurerm_subnet.subnet : key => subnet.address_prefixes[0] }
}

# Network Security Group
output "nsg_id" {
  description = "The ID of the created Network Security Group"
  value       = azurerm_network_security_group.nsg.id
}

output "nsg_name" {
  description = "The name of the created Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

output "associated_subnets" {
  description = "List of subnets associated with the Network Security Group"
  value       = [for association in azurerm_subnet_network_security_group_association.nsg_associate : association.subnet_id]
}

# Route Table
output "route_table_id" {
  description = "The ID of the created Route Table"
  value       = azurerm_route_table.public.id
}

output "internet_route_id" {
  description = "The ID of the internet access route"
  value       = azurerm_route.internet_access.id
}




