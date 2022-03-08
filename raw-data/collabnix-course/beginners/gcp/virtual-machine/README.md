## Create a Google compute instance in GCP

In this particular track, we are going to build a google compute instance using terrform.
We will be binding an instance with a static compute address and we'll also see how we can
attach service account/ scope on a virtual machine. We will also install a nginx server on our instance and we'll also allow traffic at Port 80 using http-server tags.


Add the necessary values of the variables in terraform.tfvars file

```
gcp_project_id="<project-id>"
gcp_project_location="<region>"
gcp_compute_zone="<zone>"
machine_type="<machine-type>"
```

### Terraform Init

This command will all the providers for you that are required to create your resource in GCP

```bash
cd virtual-machine
terraform init
```

The CDN which servers the providers is quite slow that's why it can take some time for the providers to get downloaded

### Terraform plan

This command will layout a plan for you and show you what all resources can be created

```bash
cd virtual-machine
terraform plan
```

### Terraform apply

This command will create all the mentioned resources for yor

```bash
cd virtual-machine
terraform apply
```

You'll be prompted a confirmation - Press yes.

Once the resources have been created you should see

```
Apply complete! Resources: 0 added, 1 changed, 0 destroyed.

Outputs:

disk_name = disk-2a7c7a928746e7a6
instance_name = vm-2a7c7a928746e7a6
public_address = 34.87.216.228
```

Now if you will head over to the public address you should see nginx welcome page.
