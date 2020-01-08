# ---------------------------------------------------------------------------------------------------------------------
# VMWARE PROVIDER VARIABLES
# These are used to connect to vCenter.
# ---------------------------------------------------------------------------------------------------------------------

variable "vsphere_server" {
  type = string
}

variable "vsphere_user" {
  type = string
}

variable "vsphere_password" {
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# VMWARE DATA SOURCE VARIABLES
# These are used to discover unmanaged resources used during deployment.
# ---------------------------------------------------------------------------------------------------------------------

variable datacenter_name {
  type        = string
  description = "The name of the vSphere Datacenter into which resources will be created."
}

variable cluster_name {
  type        = string
  description = "The vSphere Cluster into which resources will be created."
}

variable datastore_name {
  type        = string
  description = "The vSphere Datastore into which resources will be created."
}

variable datastore_cluster_name {
  type    = string
  default = ""
}

variable vm_network_name {
  type = string
}

variable template_name {
  type = string
}

# ---------------------------------------------------------------------------------------------------------------------
# VMWARE RESOURCE VARIABLES
# Variables used during the creation of resources in vSphere.
# ---------------------------------------------------------------------------------------------------------------------

variable machine_count {
  type    = number
  default = 3
}

variable hostname_prefix {
  type        = string
  default     = "ubuntu"
  description = "A prefix for the virtual machine name."
}

# ---------------------------------------------------------------------------------------------------------------------
# CLOUD INIT VARIABLES
# Variables used for generation of metadata and userdata.
# ---------------------------------------------------------------------------------------------------------------------


variable username {
  type = string
}

variable ssh_public_key {
  type        = string
  description = "Location of SSH public key."
}

variable packages {
  type    = list
  default = []
}

variable dhcp {
  type    = string
  default = "true"
}

variable ip_address {
  type    = string
  default = ""
}

variable netmask {
  type    = string
  default = ""
}

variable gateway {
  type    = string
  default = ""
}

variable nameservers {
  type    = list
  default = []
}