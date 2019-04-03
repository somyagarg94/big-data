resource "azurerm_eventhub_namespace" "test" {
  name                = "takedaEventHubNamespace"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"
  sku                 = "Standard"
  capacity            = 1
  kafka_enabled       = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_eventhub" "test" {
  name                = "takedaEventHub"
  namespace_name      = "${azurerm_eventhub_namespace.test.name}"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"
  partition_count     = 2
  message_retention   = 1
}