resource_group_name = "eops-auto-505-demo"
location            = "East US"
subscription_id     = "505743ae-49da-49ce-b0a4-eeb2cc0f8f0e"
storage_account_tier = "Standard"
storage_account_access_replication_type = "LRS"
storage_account_name = "eopsauto505demo"
tags = {

    Name = "Demo"
    Environment = "Non-Prod"
}

resource_prefix = "eops-auto-505-demo"

virtual_network_cidr = ["10.0.0.0/16"]
subnets = [

  {
    name           = "Subnet1"
    address_prefix = "10.0.1.0/24"
  },
  {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
]

nic_count                  = 1
vm_size                    = "Standard_B2ms"
vm_admin_username          = "azureadmin"
vm_count                   = 1
vm_os_storage_account_type = "Standard_LRS"
vm_sku                     = "7.6"

managed_disk_name = "app1_data_disk1"
managed_disk_storage_account_type = "Standard_LRS"
disk_size_gb = 10