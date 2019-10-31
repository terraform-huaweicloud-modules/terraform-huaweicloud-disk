variable "disks" {
  type = list(map(string))
  description = "List of Disks"
  default     = []
}

variable "instance_id" {
  description = "The ID of the Ecs Instance"
  default     = ""
}
