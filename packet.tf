# Configure the Packet Provider
provider "packet" {
  auth_token = "${var.auth_token}"
}

# Create a project
resource "packet_project" "tf_machines" {
  name           = "Terraform Machines"
}

# Create a device and add it to tf_project_1
resource "packet_device" "tf_1" {
  hostname         = "tf.coreos1"
  plan             = "${var.plan}"
  facility         = "${var.facility}"
  operating_system = "coreos_alpha"
  billing_cycle    = "hourly"
  project_id       = "${packet_project.tf_machines.id}"
  spot_instance    = true
  spot_price_max   = 0.01
}
