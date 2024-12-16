# Virtual Network
variable "resource_group_name" {
  type        = string
  description = "Name for the Resource Group."
}

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

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the Virtual Network"
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
  type = string
}

variable "route_name" {
  description = "Name for the Route."
  type = string
}
