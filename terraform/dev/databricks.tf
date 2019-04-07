resource "azurerm_databricks_workspace" "test" {
  name                = "takeda-databricks-test"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  sku                 = "${var.sku_tier}"
  location            = "${var.location}"

  tags = {
    Environment = "${var.environment}"
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
