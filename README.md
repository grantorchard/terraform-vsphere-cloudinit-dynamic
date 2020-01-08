# Cloud-Init Sample

This repo provides an example of deploying a Ubuntu machine with dynamically generated metadata and userdata files included in the templates directory.

Cloud-init configuration is provided via the [VMware guestinfo datasource](https://github.com/vmware/cloud-init-vmware-guestinfo). A sample Packer build that has the relevant dependencies pre-installed can be found [here](https://github.com/grantorchard/packer-vsphere-cloudinit).

To leverage the example of switching between DHCP and static IP addressing, you will need to set the dhcp variable value to true or false, and update the vars block for the metadata file_template resource in the config.tf file.