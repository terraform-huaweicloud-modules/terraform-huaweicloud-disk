output "this_disk_ids" {
  description = "List of IDs of the Disks"
  value       = "${module.example.this_disk_ids}"
}

output "this_attachment_ids" {
  description = "List of Attachment IDs of the Disks"
  value       = "${module.example.this_attachment_ids}"
}
