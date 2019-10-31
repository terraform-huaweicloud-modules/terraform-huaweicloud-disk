# Huawei Cloud Disk Terraform Module

Terraform moudle which creates Disks and Disk Attachments on Huawei Cloud.

These types of resources are supported:

* [Disk](https://www.terraform.io/docs/providers/huaweicloud/r/blockstorage_volume_v2.html)
* [Disk Attachment](https://www.terraform.io/docs/providers/huaweicloud/r/compute_volume_attach_v2.html)

## Usage

```hcl
module "example" {
  source = "terraform-huaweicloud-modules/disk/huaweicloud"

  // Disks
  disks = [
    {
      name              = "testDisk-1"
      size              = "40"
      availability_zone = "cn-north-1a"
    },
    {
      name              = "testDisk-2"
      description       = "Test disk"
      disk_type         = "SAS"
      size              = "60"
    },
    {
      name              = "testDisk-3"
      disk_type         = "SSD"
      size              = "80"
      availability_zone = "cn-north-1a"
    },
  ]

  // Instance to be attached
  instance_id = "11dcba1f-fb08-11e9-b3be-0255ac10171d"
}
```

## Conditional creation

This module can create both Disk and Disk Attachment, it is possible to attach disk to
Ecs instance only if you specify `instance_id` parameter.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| disks  | List of disks  | list(map(string))  | `[]`  | yes  |
| instance_id  | Specifying Ecs instance ID  | string  | `""`  | no  |

### Subnets

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name  | Name of the disk  | string  | `""`  | yes  |
| description  | Description of the disk  | string  | `""`  | no  |
| availability_zone  | AZ of the disk  | string  | `""`  | no  |
| disk_type  | Disk type of the disk, Available type are `SSD`, `SAS` and `SATA`  | string  | `""`  | no  |
| size  | Size of the disk  | int  | `-`  | yes  |


## Outputs

| Name | Description |
|------|-------------|
| this_disk_ids | The IDs of the Disks |
| this_attachment_ids | The Attachment IDs of the Disks |

Authors
----
Created and maintained by [Zhenguo Niu](https://github.com/niuzhenguo)

License
----
Apache 2 Licensed. See LICENSE for full details.
