resource "azurerm_data_lake_store" "takedaadls" {
  name                = "${var.data_lake_store_name}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  location            = "${var.location}"
  encryption_state    = "Enabled"
  encryption_type     = "ServiceManaged"

  tags = {
    Environment = "${var.environment}"
    managed-by  = "terraform"
  }
}
