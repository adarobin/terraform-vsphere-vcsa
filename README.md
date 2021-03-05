# vCenter Server Appliance Terraform Module

Terraform module which creates a vCenter Server Appliance virtual machine in a vSphere environment.

Presently, this module does not work with the official `terraform-provider-vsphere`. You must compile the provider from
[#1339](https://github.com/hashicorp/terraform-provider-vsphere/pull/1339).

The module presently assumes you are deploying from a machine with `bash` and `curl` installed.

The module has been tested with `VMware-vCenter-Server-Appliance-7.0.1.00200-17327517_OVF10.ova`.
Other versions may or may not work correctly.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->