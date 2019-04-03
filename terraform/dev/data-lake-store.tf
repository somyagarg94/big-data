resource "azurerm_data_lake_store" "takedaadls" {
  name                = "takedadatalaketest"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"
  location            = "${var.location}"
  encryption_state    = "Enabled"
  encryption_type     = "ServiceManaged"

  tags = {
    Environment = "dev"
    managed-by  = "terraform"
  }
}
