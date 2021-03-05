variable "ova_path" {
  type        = string
  description = "The full path to the vCenter Server Appliance OVA."
}

variable "folder_name" {
  type        = string
  description = "The name of the vm folder the vCenter Server Appliance should be created in."
}

variable "network_id" {
  type        = string
  description = "The ID of the network the vCenter Server Appliance should be attached to."
}

variable "datacenter_id" {
  type        = string
  description = "The ID of the dataceter the vCenter Server Appliance should be created in."
}

variable "resource_pool_id" {
  type        = string
  description = "The ID of the resource pool the vCenter Server Appliance should be created in."
}

variable "datastore_id" {
  type        = string
  description = "The ID of the datastore the vCenter Server Appliance should be created in."
}

variable "host_system_id" {
  type        = string
  description = "The ID of the host system that the vCenter Server Appliance OVA will be initially deployed on."
}

variable "ip_address" {
  type        = string
  default     = ""
  description = "The IP address of the vCenter Server Appliance. This defaults to \"\" which results in DHCP being used."
}

variable "mac_address" {
  type        = string
  default     = ""
  description = "The MAC address of the vCenter Server Appliance. This defaults to \"\" which results in a MAC address being generated."
}

variable "cpu_count_override" {
  type        = number
  default     = 0
  description = "The number of CPUs the vCenter Server Appliance should have. Defaults to 0 which uses the CPU count of the deployment selected."

  validation {
    condition     = var.cpu_count_override >= 0
    error_message = "The cpu_count_override value must greater than or equal to 0."
  }
}

variable "memory_override" {
  type        = number
  default     = 0
  description = "The ammount of memory the vCenter Server Appliance should have. Defaults to 0 which uses the memory size of the deployment selected."

  validation {
    condition     = var.memory_override >= 0
    error_message = "The memory_override value must greater than or equal to 0."
  }
}

variable "deployment_size" {
  type        = string
  default     = "tiny"
  description = "The deployment size of the vCenter Server Appliances.  Defaults to \"tiny\"."

  validation {
    condition     = contains(["tiny", "small", "medium", "large", "xlarge", "tiny-lstorage", "small-lstorage", "medium-lstorage", "large-lstorage", "xlarge-lstorage", "tiny-xlstorage", "small-xlstorage", "medium-xlstorage", "large-xlstorage", "xlarge-xlstorage"], var.deployment_size)
    error_message = "The deployment_size must be one of \"tiny\", \"small\", \"medium\", \"large\", \"xlarge\", \"tiny-lstorage\", \"small-lstorage\", \"medium-lstorage\", \"large-lstorage\", \"xlarge-lstorage\", \"tiny-xlstorage\", \"small-xlstorage\", \"medium-xlstorage\", \"large-xlstorage\", \"xlarge-xlstorage\"."
  }
}

variable "hostname" {
  type        = string
  description = "The FQDN of the vCenter Server Appliance. DNS records must exist ahead of provisioning or DDNS must be working in the environment."
}

variable "prefix" {
  type        = number
  default     = null
  description = "The subnet of the vCenter Server Appliance in CIDR format. This defaults to `null`. Must be set if a static IP is set in `ip_address`."
}

variable "sso_domain_name" {
  type        = string
  default     = "vsphere.local"
  description = "The name of the internal SSO domain.  Defaults to \"vsphere.local\"."
}

variable "enable_ssh" {
  type        = bool
  default     = true
  description = "Should SSH be enabled on the vCenter Server Appliance?"
}

variable "provisioner_timeout" {
  type        = number
  default     = 60
  description = "The max amount of time to wait in minutes for the vCenter Server Appliance to become available after provisioning"
}

variable "dns" {
  type        = string
  default     = ""
  description = "The DNS server(s) for the vCenter Server Appliance. This defaults to \"\" which results in DHCP being used. Must be set if a static IP is set in `ip_address`."
}

variable "ntp" {
  type        = string
  default     = "pool.ntp.org"
  description = "The NTP server for the vCenter Server Appliance. Defaults to \"pool.ntp.org\"."
}

variable "gateway" {
  type        = string
  default     = ""
  description = "The gateway of the vCenter Server Appliance. This defaults to \"\" which results in DHCP being used. Must be set if a static IP is set in `ip_address`"
}
