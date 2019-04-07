resource "azurerm_storage_account" "takedadev" {
  name                     = "${var.storage_account_name}"
  resource_group_name      = "${azurerm_resource_group.takeda_dev_rg.name}"
  location                 = "${var.location}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.storage_account_replication_type}"
  account_kind             = "${var.storage_account_kind}"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}