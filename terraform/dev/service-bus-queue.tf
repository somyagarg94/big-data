resource "azurerm_servicebus_namespace" "test" {
  name                = "takeda-sevicebus-namespace"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"
  sku                 = "Standard"

  tags = {
    environment = "dev"
    managed-by = "terraform"
  }
}

resource "azurerm_servicebus_queue" "test" {
  name                = "takeda-servicebus-queue"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"
  namespace_name      = "${azurerm_servicebus_namespace.test.name}"

  enable_partitioning = true
}