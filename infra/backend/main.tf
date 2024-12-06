# Storage Account for tfstate

module "backend_storage" {
  source = "../../modules/storage-account"

  storage_account_name            = var.storage_account_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = var.account_tier
  access_tier                     = var.access_tier
  account_replication_type        = var.account_replication_type
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  account_kind                    = var.account_kind
  versioning_enabled              = var.versioning_enabled
  tags                            = var.tags
  storage_container_name          = var.storage_container_name
  container_access_type           = var.container_access_type
}