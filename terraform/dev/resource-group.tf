resource "azurerm_resource_group" "takeda_dev_rg" {
  location = "${var.location}"
  name     = "${var.resource_group_name}"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}

/*data "azurerm_resource_group" "test" {
  name = "Somya_Dev"
}*/
