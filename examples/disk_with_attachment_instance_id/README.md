# Disk example with instance id

Configuration in this directory creates Disk and Disk Attachment.

## Usage
To run this example you need first replace the configuration like disks, instance_id, etc, with your own resource and execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Outputs

| Name | Description |
|------|-------------|
| this_disk_ids | List of IDs of the Disks |
| this_attachment_ids | List of Attachment IDs of the Disks |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
