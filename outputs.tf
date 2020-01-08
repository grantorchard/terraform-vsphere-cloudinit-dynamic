output metadata {
  value = "\n${data.template_file.metadata.rendered}"
}

output userdata {
  value = "\n${data.template_file.userdata.rendered}"
}
