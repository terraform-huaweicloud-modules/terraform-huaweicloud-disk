output "this_disk_ids" {
  description = "List of IDs of the Disks"
  value       = "${join(",",huaweicloud_blockstorage_volume_v2.this.*.id)}"
}

output "this_attachment_ids" {
  description = "List of Attachment IDs of the Disks"
  value       = "${join(",",huaweicloud_compute_volume_attach_v2.this.*.id)}"
}
