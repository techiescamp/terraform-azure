resource "azurerm_resource_group" "backend_rg" {
  location = var.location
  name     = var.resource_group_name

  tags = merge(
    var.tags,
  )
}

resource "azurerm_storage_account" "tfstate_storage_account" {
  name                            = var.storage_account_name
  resource_group_name             = azurerm_resource_group.backend_rg.name
  location                        = var.location
  account_tier                    = var.account_tier
  account_kind                    = var.account_kind
  account_replication_type        = var.account_replication_type
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  access_tier                     = var.access_tier
  blob_properties {
    versioning_enabled = var.versioning_enabled
  }

  tags = var.tags

  depends_on = [ azurerm_resource_group.backend_rg ]
}

resource "azurerm_storage_container" "tfstate_storage_container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.tfstate_storage_account.name
  container_access_type = var.container_access_type

  depends_on = [
    azurerm_storage_account.tfstate_storage_account
  ]
}
