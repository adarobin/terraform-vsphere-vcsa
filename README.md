# vCenter Server Appliance Terraform Module

Terraform module which creates a vCenter Server Appliance virtual machine in a vSphere environment.

Presently, this module does not work with the official `terraform-provider-vsphere`. You must compile the provider from
[#1339](https://github.com/hashicorp/terraform-provider-vsphere/pull/1339).

The module presently assumes you are deploying from a machine with `bash` and `curl` installed.

The module has been tested with `VMware-vCenter-Server-Appliance-7.0.1.00200-17327517_OVF10.ova`.
Other versions may or may not work correctly.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| random | n/a |
| vsphere | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [random_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) |
| [vsphere_ovf_vm_template](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/ovf_vm_template) |
| [vsphere_virtual_machine](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/virtual_machine) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cpu\_count\_override | The number of CPUs the vCenter Server Appliance should have. Defaults to 0 which uses the CPU count of the deployment selected. | `number` | `0` | no |
| datacenter\_id | The ID of the dataceter the vCenter Server Appliance should be created in. | `string` | n/a | yes |
| datastore\_id | The ID of the datastore the vCenter Server Appliance should be created in. | `string` | n/a | yes |
| deployment\_size | The deployment size of the vCenter Server Appliances.  Defaults to "tiny". | `string` | `"tiny"` | no |
| dns | The DNS server(s) for the vCenter Server Appliance. This defaults to "" which results in DHCP being used. Must be set if a static IP is set in `ip_address`. | `string` | `""` | no |
| enable\_ssh | Should SSH be enabled on the vCenter Server Appliance? | `bool` | `true` | no |
| folder\_name | The name of the vm folder the vCenter Server Appliance should be created in. | `string` | n/a | yes |
| gateway | The gateway of the vCenter Server Appliance. This defaults to "" which results in DHCP being used. Must be set if a static IP is set in `ip_address` | `string` | `""` | no |
| host\_system\_id | The ID of the host system that the vCenter Server Appliance OVA will be initially deployed on. | `string` | n/a | yes |
| hostname | The FQDN of the vCenter Server Appliance. DNS records must exist ahead of provisioning or DDNS must be working in the environment. | `string` | n/a | yes |
| ip\_address | The IP address of the vCenter Server Appliance. This defaults to "" which results in DHCP being used. | `string` | `""` | no |
| mac\_address | The MAC address of the vCenter Server Appliance. This defaults to "" which results in a MAC address being generated. | `string` | `""` | no |
| memory\_override | The ammount of memory the vCenter Server Appliance should have. Defaults to 0 which uses the memory size of the deployment selected. | `number` | `0` | no |
| network\_id | The ID of the network the vCenter Server Appliance should be attached to. | `string` | n/a | yes |
| ntp | The NTP server for the vCenter Server Appliance. Defaults to "pool.ntp.org". | `string` | `"pool.ntp.org"` | no |
| ova\_path | The full path to the vCenter Server Appliance OVA. | `string` | n/a | yes |
| prefix | The subnet of the vCenter Server Appliance in CIDR format. This defaults to `null`. Must be set if a static IP is set in `ip_address`. | `number` | `null` | no |
| provisioner\_timeout | The max amount of time to wait in minutes for the vCenter Server Appliance to become available after provisioning | `number` | `60` | no |
| resource\_pool\_id | The ID of the resource pool the vCenter Server Appliance should be created in. | `string` | n/a | yes |
| sso\_domain\_name | The name of the internal SSO domain.  Defaults to "vsphere.local". | `string` | `"vsphere.local"` | no |

## Outputs

| Name | Description |
|------|-------------|
| administrator\_password | n/a |
| administrator\_user | n/a |
| root\_password | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->