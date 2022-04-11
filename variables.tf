variable "resource_group_name" {
  type        = string
  description = "Provide prefix name for you resource groups."
}

variable "virtual_network_name" {
  type        = string
  description = "Provide name for your virtual network."
}

variable "location" {
  type        = string
  description = "Location in which resource groups needs to be created."
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID where resources will be deployed."
}

variable "tags" {
  type = map
  description = "Tags for your resources."
}

variable "virtual_network_cidr" {
  type        = list(any)
  description = "CIDR ranger for your virtual network."
}

variable "subnets" {
  type        = list(any)
  description = "Provide subnet details for your nics."
}

variable "nic_name" {
  type        = string
  description = "Provide the name of nics to be created. It will automaticall assign index to the name of nics e.g. nic-01,nic-02"
}

variable "nic_count" {
  type        = number
  description = "Provide the number of nics to be created."
}

variable "vm_name" {
  type        = string
  description = "name for your Vm's where index after name will be automatically assigned."
}

variable "vm_size" {
  type        = string
  description = "Size for your Vm's where accepted syntax is Standard_B2s, Standard_B2ms etc."
}

variable "vm_admin_username" {
  type        = string
  description = "Provide username for accessing all your machines after creation."
}

variable "vm_admin_password" {
  type        = string
  description = "Provide password for accessing all your machines after creation."
}

variable "vm_count" {
  type        = number
  description = "Provide number of VM's to be created."
}

variable "vm_os_storage_account_type" {
  type        = string
  description = "Provide value for os disk storage account type. Accepted syntax is Standard_LRS etc."
}

variable "vm_sku" {
  type        = string
  description = "Please provide version of the RHEL vm you prefer to create."
}


variable "managed_disk_name" {
  
  type = string
  description = "Provide name for your managed disk."

}

variable "managed_disk_storage_account_type" {
  
  type = string
  description = "Provide type of storage account for managed disk. For e.g., Standard_LRS, Premium_LRS etc."
}

variable "disk_size_gb" {
  
  type = number
  description = "Size of managed disk in GB."
}