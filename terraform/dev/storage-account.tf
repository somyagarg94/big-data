resource "azurerm_storage_account" "takedadev" {
  name                     = "takedadev1"
  resource_group_name      = "${azurerm_resource_group.hub_rg.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
  account_kind             = "BlobStorage"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}