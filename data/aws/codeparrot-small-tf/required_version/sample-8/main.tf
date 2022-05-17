data "template_file" "name_0" {
  template = file("user_data.tpl")
  vars = {
    region = var.region
    cluster_name = var.cluster_name
    instance_type = var.instance_type
    ami = var.ami_0ff8a91507f77f867
  }
}

