module "app2_vnet_subnet" {

  source               = "git::https://github.com/lovemasta41/Terraform_Modules//Modules/Azure/Network/Virtual Network and Subnets/Module"
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  tags                 = var.tags
  virtual_network_cidr = var.virtual_network_cidr
  subnets              = var.subnets
}


module "app2_nic" {

  source              = "git::https://github.com/lovemasta41/Terraform_Modules//Modules/Azure/Network/Network Interface Card/Module"
  resource_group_name = var.resource_group_name
  location            = var.location
  nic_name            = var.nic_name
  nic_count           = var.nic_count
  subnet_ids          = module.app2_vnet_subnet.vnet_subnet_details
  tags                = var.tags

}

/*
#create rhel vms
module "app1_rhel_vms" {
  source                     = "git::https://github.com/lovemasta41/Terraform_Modules//Modules/Azure/Compute/Virtual Machine/rhel_vm_with_user_and_pass/Module"
  vm_name                    = var.vm_name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  vm_size                    = var.vm_size
  vm_admin_username          = var.vm_admin_username
  vm_admin_password          = var.vm_admin_password
  vm_nic_ids                 = module.app2_nic.nic_ids
  vm_count                   = var.vm_count
  vm_os_storage_account_type = var.vm_os_storage_account_type
  vm_sku                     = var.vm_sku
  tags                       = var.tags
}
*/

module "windows_app2_vms" {
  source                     = "git::https://github.com/lovemasta41/Terraform_Modules//Modules/Azure/Compute/Virtual Machine/windows_vm_with_user_and_pass/Module"
  vm_name                    = var.vm_name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  vm_size                    = var.vm_size
  vm_admin_username          = var.vm_admin_username
  vm_admin_password          = var.vm_admin_password
  vm_nic_ids                 = module.app2_nic.nic_ids
  vm_count                   = var.vm_count
  vm_os_storage_account_type = var.vm_os_storage_account_type
  vm_sku                     = var.vm_sku
  tags                       = var.tags
}

module "app2_managed_disk" {
  source = "git::https://github.com/lovemasta41/Terraform_Modules//Modules/Azure/Compute/disks/Module"
  managed_disk_name = var.managed_disk_name
  resource_group_name = var.resource_group_name
  location = var.location
  managed_disk_storage_account_type = var.managed_disk_storage_account_type
  disk_size_gb = var.disk_size_gb
  tags = var.tags
}

#attach disk
module "attach_managed_disk" {
  source = "git::https://github.com/lovemasta41/Terraform_Modules//Modules/Azure/Associations/Attach_Managed_Disk/Module"
  managed_disk_id = module.app2_managed_disk.managed_disk_details.id
  virtual_machine_id = module.windows_app2_vms.vm_details[0].id
}