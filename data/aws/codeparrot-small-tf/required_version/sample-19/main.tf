data "template_file" "name_0" {
  template = file("${path.module}/user_data.tpl")

  vars = {
    aws_region = var.aws_region
    t2_micro = var.t2_micro
    t2_prod = random_shuffle.t2_prod.result
    t2_prod_count = var.t2_prod_count
    t2_prod_ami = var.t2_prod_ami
    t2_prod_ami_count = var.t2_prod_ami_count
    t2_prod_ami_ami = var.t2_prod_ami
    t2_prod_ami_ami_count = var.t2_prod_ami_count
    t2_prod_ami_ami_ami_count = var.t2_prod_ami_ami_count
    t2_prod_ami_ami_ami_count = var.t2_prod_ami_ami_count
    t2_prod_ami_ami_ami_count = var.t2_prod_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_count
    t2_prod_ami_ami_ami_ami_count = var.t2_prod_ami_ami_ami_ami_count
    t2_prod_ami_ami
}
