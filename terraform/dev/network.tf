resource "azurerm_virtual_network" "takeda-dev-hub" {
  name                = "takeda-dev-hub-vn"
  address_space       = ["10.0.0.0/16"] #this will be automated according to the architecture
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}

resource "azurerm_subnet" "internal" {
  name                 = "takeda-dev-internal"
  resource_group_name  = "${azurerm_resource_group.hub_rg.name}"
  virtual_network_name = "${azurerm_virtual_network.takeda-dev-hub.name}"
  address_prefix       = "10.0.2.0/24" #this will be automated according to the architecture
}

resource "azurerm_network_interface" "main" {
  name                = "takeda-dev-nic"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.hub_rg.name}"

  ip_configuration {
    name                          = "takedatestconfiguration1"
    subnet_id                     = "${azurerm_subnet.internal.id}"
    private_ip_address_allocation = "Dynamic"
  }
}