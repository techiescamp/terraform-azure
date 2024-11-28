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