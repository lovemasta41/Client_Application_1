resource_group_name = "eops-auto-505-demo-rg"
location            = "East US"
subscription_id     = "ac059662-3e5d-40f9-86bc-fa67bf91d78a"
tags = {

    Name = "Demo"
    Environment = "Non-Prod"
}

virtual_network_name = "eops-auto-505-demo-vnet"
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

vm_name = "eopsautodemo"
nic_name = "app2-nic"
nic_count                  = 2
vm_size                    = "Standard_B2ms"
vm_admin_username          = "azureadmin"
vm_count                   = 2
vm_os_storage_account_type = "Standard_LRS"
vm_sku                     = "2016-Datacenter"

managed_disk_name = "app2_data_disk1"
managed_disk_storage_account_type = "Standard_LRS"
disk_size_gb = 10