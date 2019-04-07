# resource "azurerm_virtual_machine" "main" {
#   name                  = "takeda-vm"
#   location              = "${var.location}"
#   resource_group_name   = "${azurerm_resource_group.takeda_dev_rg.name}"
#   network_interface_ids = ["${azurerm_network_interface.main.id}"]
#   vm_size               = "Standard_DS1_v2"

#   # Uncomment this line to delete the OS disk automatically when deleting the VM
#   # delete_os_disk_on_termination = true


#   # Uncomment this line to delete the data disks automatically when deleting the VM
#   # delete_data_disks_on_termination = true

#   storage_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2012-R2-Datacenter"
#     version   = "latest"
#   }
#   storage_os_disk {
#     name              = "myosdisk1"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "mywinvm"
#     admin_username = "adminsg"
#     admin_password = "Password1234-"
#   }
#   os_profile_windows_config {
#     provision_vm_agent        = false
#     enable_automatic_upgrades = false
#   }
#   tags = {
#     environment = "dev"
#   }
# }