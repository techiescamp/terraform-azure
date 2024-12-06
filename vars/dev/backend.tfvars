storage_account_name            = "techiescampbackendsa"
resource_group_name             = "techiescamp-dev-terraform-backend-rg"
location                        = "westus2"
account_tier                    = "Standard"
access_tier                     = "Cool"
account_replication_type        = "LRS" # Locally Redundant Storage
allow_nested_items_to_be_public = false
account_kind                    = "StorageV2"
versioning_enabled              = true
tags = {
  Environment = "Development",
  Project     = "Demo"
}
storage_container_name = "tfstate"
container_access_type  = "private"