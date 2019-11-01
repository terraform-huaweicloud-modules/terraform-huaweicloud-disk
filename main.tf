# Create Disk
resource "huaweicloud_blockstorage_volume_v2" "this" {
  count             = "${length(var.disks)}"
  name              = "${lookup(var.disks[count.index], "name", null)}"
  description       = "${lookup(var.disks[count.index], "description", null)}"
  size              = "${lookup(var.disks[count.index], "size", null)}"
  volume_type       = "${lookup(var.disks[count.index], "disk_type", null)}"
  availability_zone = "${lookup(var.disks[count.index], "availability_zone", null)}"
}

# Create Disk Attachement
resource "huaweicloud_compute_volume_attach_v2" "this" {
  count       = "${var.instance_id=="" ? 0 : length(var.disks)}"
  instance_id = "${var.instance_id}"
  volume_id   = "${huaweicloud_blockstorage_volume_v2.this.*.id[count.index]}"
}
