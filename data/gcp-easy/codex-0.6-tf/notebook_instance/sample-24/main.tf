terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a notebook instance 
resource "google_ai_platform_notebook_instance" "name_0" {
  name     = "my-notebook-instance"
  zone     = "us-central1-a"
  machine_type = "n1-standard-2"
  boot_disk_size_gb = 15
  boot_disk_type = "pd-standard"
  accelerator_type = "NVIDIA_TESLA_T4"
  accelerator_count = 1
  network_tier = "PREMIUM"
  service_account = "my-service-account@my-project.iam.gserviceaccount.com"
  machine_image_project_id = "deeplearning-platform-release"
  machine_image_family = "tf2-latest-gpu"
  container_image = "gcr.io/deeplearning-platform-release/tf2-cpu:m39"
  container_image_version = "latest"
  container_command = "echo hello world"
  container_restart_policy = "always"
  container_env = {
    key = "value"
  }
  container_mount_host_path = "/mnt/disks/ssd0"
  container_mount_guest_path = "/mnt/disks/ssd0"
  container_mount_mode = "rw"
  container_mount_propagation = "PRIVATE"
  container_mount_selinux_relabel = "false"
  container_mount_read_only = "false"
  container_mount_recursive = "false"
  container_mount_user = "root"
  container_mount_group = "root"
  container_mount_uid = 0
  container_mount_gid = 0
  container_mount_size = 10
  container_mount_type = "pd-standard"
  container_mount_auto_delete = "false"
  container_mount_device_name = "my-device"
  container_mount_device_read_only = "false"
  container_mount_device_type = "nvme"
  container_mount_device_interface = "nvme"
  container_mount_device_partition = 0
  container_mount_device_fs_type = "ext4"
  container_mount_device_fs_options = ["discard"]
  container_mount_device_fs_license = "apache2"
  container_mount_device_scsi_bus = 0
  container_mount_device_scsi_target = 0
  container_mount_device_scsi_lun = 0
  container_mount_device_scsi_host = 0
  container_mount_device_scsi_channel = 0
  container_mount_device_scsi_wwn = "0x0000000000000000"
  container_mount_device_scsi_wwid = "0x0000000000000000"
  container_mount_device_scsi_io_timeout = 0
  container_mount_device_scsi_flush_after_unmap = 0
  container_mount_device_scsi_discard_granularity = 0
  container_mount_device_scsi_discard_max_bytes = 0
  container_mount_device_scsi_discard_zeroes_data = "false"
  container_mount_device_scsi_manage_dsm = "false"
  container_mount_device_scsi_protocol = "iscsi"
  container_mount_device_scsi_max_sectors = 0
  container_mount_device_scsi_max_segment_size = 0
  container_mount_device_scsi_max_transfer_length = 0
  container_mount_device_scsi_max_unmap_lba_count = 0
  container_mount_device_scsi_max_unmap_block_descriptor_count = 0
  container_mount_device_scsi_unmap_granularity = 0
  container_mount_device_scsi_unmap_granularity_alignment = 0
  container_mount_device_scsi_thin_provisioning = "false"
  container_mount_device_scsi_zero_detect = "false"
  container_mount_device_scsi_emulate_tpu = "false"
  container_mount_device_scsi_emulate_tpws = "false"
  container_mount_device
}

