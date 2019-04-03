provider "azurerm" {
  subscription_id = "6b464386-2fd7-41d7-9f5a-5867597eccc1"
  tenant_id = "3b461644-6a71-4453-bd54-34e6f94036f5"
  client_id = "ccb24015-b4f2-49ac-a26a-895a866a79c2"
  client_secret = "4f83c83b-afd5-4bf6-b67b-68b97238818d"
}

resource "azurerm_resource_group" "terraform_remote_state_rg" {
  location = "East US 2"
  name = "terraform_remote_state_rg"

  tags = {
    environment = "${var.environment}"
    managed-by  = "terraform"
  }
}