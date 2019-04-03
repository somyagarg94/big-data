provider "azurerm" {
  subscription_id = "6b464386-2fd7-41d7-9f5a-5867597eccc1"
  tenant_id = "3b461644-6a71-4453-bd54-34e6f94036f5"
  client_id = "ccb24015-b4f2-49ac-a26a-895a866a79c2"
  client_secret = "4f83c83b-afd5-4bf6-b67b-68b97238818d"
}

resource "azurerm_virtual_machine" "main" {
  name                  = "takeda-vm"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.hub_rg.name}"
  network_interface_ids = ["${azurerm_network_interface.main.id}"]
  vm_size               = "Standard_DS1_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true


  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-R2-Datacenter"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "mywinvm"
    admin_username = "adminsg"
    admin_password = "Password1234-"
  }
  os_profile_windows_config {
    provision_vm_agent        = false
    enable_automatic_upgrades = false
  }
  tags = {
    environment = "dev"
  }
}