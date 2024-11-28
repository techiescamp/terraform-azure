resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name

  tags = merge(
    var.tags,
  )

  lifecycle {
    ignore_changes = [
      tags["Last-Modified"],
    ]
  }

  managed_by = var.managed_by         # Owner or manager of the resourece group
}