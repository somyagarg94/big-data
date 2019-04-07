variable "location" {
  default = "West Europe"
}
variable "environment" {
  default = "dev"
}

variable "subscription_id" {
  default = "6b464386-2fd7-41d7-9f5a-5867597eccc1"
} 

variable "tenant_id" {
  default = "3b461644-6a71-4453-bd54-34e6f94036f5"
}

variable "client_id" {
  default = "ccb24015-b4f2-49ac-a26a-895a866a79c2"
}

variable "client_secret" {
  default = "4f83c83b-afd5-4bf6-b67b-68b97238818d"
}

variable "resource_group_name" {
  default = "Takeda-Integration-Dev-RG"
}

variable "sku_tier" {
  default =  "standard"
}

# variable "tags" {
#   default = {
#     "environment" = "dev",
#     "managed-by"  = "terraform",
#   }
# }

////////-----------------------Storage Account variables----------------------------////////

variable "storage_account_name" {
  default = "takedadev1"
}

variable "storage_account_tier" {
  default = "Standard"
}

variable "storage_account_replication_type" {
  default = "RAGRS"
}

variable "storage_account_kind" {
  default = "BlobStorage"
}

////////-----------------------Network variables----------------------------////////

variable "virtual_network_name" {
  default = "takeda-dev-hub-vn"
}

variable "subnet_name" {
  default = "takeda-dev-internal"
}

variable "network_interface_name" {
  default = "takeda-dev-nic"
}

variable "network_interface_ip_configuration_name" {
  default = "takedadevconf"
}

variable "network_interface_private_ip_address_allocation" {
  default = "Dynamic"
}

////////-----------------------Service Bus Variables----------------------------////////

variable "servicebus_namespace_name" {
  default = "takeda-sevicebus-namespace"
}

variable "servicebus_queue_name" {
  default = "takeda-servicebus-queue"
}

////////-----------------------Event Hub----------------------------////////

variable "eventhub_namespace_name" {
  default = "takedaEventHubDevNamespace"
}

variable "eventhub_name" {
  default = "takedaEventHub"
}


////////-----------------------ADLS = Data Lake Store----------------------------////////

variable "data_lake_store_name" {
  default = "takedadatalaketest"
}

////////-----------------------ML Congnitive ----------------------------////////
