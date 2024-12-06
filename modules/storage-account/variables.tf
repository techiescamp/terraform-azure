variable "storage_account_name" {
  description = "The name of the Azure Storage Account to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the storage account will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}

variable "account_tier" {
  description = "Specifies the performance tier of the storage account. Options: 'Standard' or 'Premium'."
  type        = string
}

variable "account_replication_type" {
  description = "Specifies the replication type for the storage account. Options: 'LRS', 'GRS', 'ZRS', 'RAGRS'."
  type        = string
}

variable "allow_nested_items_to_be_public" {
  description = "Indicates whether nested items within the storage account can be publicly accessible."
  type        = bool
}

variable "account_kind" {
  description = "Defines the kind of storage account. Options: 'Storage', 'BlobStorage', 'StorageV2'."
  type        = string
}

variable "access_tier" {
  description = "Specifies the access tier for the storage account. Options: 'Hot', 'Cool', 'Archive'."
  type        = string
}

variable "versioning_enabled" {
  description = "Indicates whether versioning is enabled for the storage account."
  type        = bool
}

variable "tags" {
  description = "A map of key-value pairs to tag the resources."
  type        = map(string)
}

# Storage Container
variable "storage_container_name" {
  description = "The name of the container within the storage account."
  type        = string
}

variable "container_access_type" {
  description = "Defines the access level of the container. Options: 'private', 'blob', 'container'."
  type        = string
}
