resource "azurerm_resource_group" "hub_rg" {
  location = "${var.location}"
  name = "Takeda-Integration-Dev-RG"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}

/*data "azurerm_resource_group" "test" {
  name = "Somya_Dev"
}*/
