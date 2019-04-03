resource "azurerm_databricks_workspace" "test" {
  name                = "takeda-databricks-test"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"
  sku                 = "standard"
  location            = "${var.location}"

  tags = {
    Environment = "dev"
    managed-by  = "terraform"
  }
 //managed_resource_group_name  = "${azurerm_managed_resource_group_name.databricks-rg.name}"
}

//this needs to be researched
# resource "azurerm_managed_resource_group_name" "databricks-rg" {
#   name                 = "databricks-rg"
#   location             = "${var.location}"

#    tags = {
#     Environment = "dev"
#     managed-by  = "terraform"
#     purpose     = "databricks"
#   }
#}
