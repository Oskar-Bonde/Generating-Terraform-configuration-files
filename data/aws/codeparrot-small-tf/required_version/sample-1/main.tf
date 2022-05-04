data "template_file" "name_0" {
  template = file("user_data.tpl")

  vars = {
    aws_region = var.aws_region
    t2_micro = var.t2_micro
    random_version = var.random_version
    user_data = data.template_file.name_0.rendered
  }
}

