resource "azurerm_virtual_network" "takeda-dev-hub" {
  name                = "${var.virtual_network_name}"
  address_space       = ["10.0.0.0/16"] #this will be automated according to the architecture
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.subnet_name}"
  resource_group_name  = "${azurerm_resource_group.takeda_dev_rg.name}"
  virtual_network_name = "${azurerm_virtual_network.takeda-dev-hub.name}"
  address_prefix       = "10.0.2.0/24" #this will be automated according to the architecture
}

resource "azurerm_network_interface" "main" {
  name                = "${var.network_interface_name}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"

  ip_configuration {
    name                          = "${var.network_interface_ip_configuration_name}"
    subnet_id                     = "${azurerm_subnet.internal.id}"
    private_ip_address_allocation = "${var.network_interface_private_ip_address_allocation}"
  }
}