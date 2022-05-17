data "template_file" "name_0" {
  template = file("user_data.tpl")
  vars = {
    aws_region = var.aws_region
    t2_micro = random_id.t2_micro.hex
    t2_username = var.t2_username
    t2_password = var.t2_password
  }
}

