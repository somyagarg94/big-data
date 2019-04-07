resource "azurerm_eventhub_namespace" "takeda_eventhub_namespace_dev" {
  name                = "${var.eventhub_namespace_name}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  sku                 = "${var.sku_tier}"
  capacity            = 1
  kafka_enabled       = true

  #tags = ["${var.tags}"]
}

resource "azurerm_eventhub" "takeda_eventhub_dev" {
  name                = "${var.eventhub_name}"
  namespace_name      = "${azurerm_eventhub_namespace.takeda_eventhub_namespace_dev.name}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  partition_count     = 2
  message_retention   = 1
}