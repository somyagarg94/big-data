resource "azurerm_servicebus_namespace" "takeda-dev-sb-namespace" {
  name                = "${var.servicebus_namespace_name}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  sku                 = "${var.sku_tier}"

  tags = {
    environment = "${var.environment}"
    managed-by = "terraform"
  }
}

resource "azurerm_servicebus_queue" "takeda-sb-queue" {
  name                = "${var.servicebus_queue_name}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  namespace_name      = "${azurerm_servicebus_namespace.takeda-dev-sb-namespace.name}"

  enable_partitioning = true
}