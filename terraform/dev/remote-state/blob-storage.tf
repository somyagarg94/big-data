resource "azurerm_storage_account" "takedadevremotestate" {
  name                     = "takedadevremotestate"
  resource_group_name      = "${azurerm_resource_group.terraform_remote_state_rg.name}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
  account_kind             = "BlobStorage"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}

resource "azurerm_storage_container" "terraform-remotestate" {
  name                  = "terraform-remotestate"
  resource_group_name   = "${azurerm_resource_group.terraform_remote_state_rg.name}"
  storage_account_name  = "${azurerm_storage_account.takedadevremotestate.name}"
  container_access_type = "Blob"
}