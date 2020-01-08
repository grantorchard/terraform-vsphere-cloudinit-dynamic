data template_file "userdata" {
  template = file("${path.module}/templates/userdata.yaml")

  vars = {
    username       = var.username
    ssh_public_key = file(var.ssh_public_key)
    packages       = jsonencode(var.packages)
  }
}


data template_file "metadata" {
  template = file("${path.module}/templates/metadata.yaml")
  vars = {
    dhcp        = var.dhcp
    hostname    = var.hostname_prefix
    ip_address  = var.ip_address
    netmask     = var.netmask
    nameservers = jsonencode(var.nameservers)
    gateway     = var.gateway
  }
}