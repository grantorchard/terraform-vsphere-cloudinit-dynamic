output metadata {
  value = data.template_file.metadata.rendered
}

output userdata {
  value = data.template_file.userdata.rendered
}
