provider "huaweicloud" {
  access_key  = "AK"
  secret_key  = "SK"
  auth_url    = "https://iam.cn-north-1.myhwclouds.com:443/v3"
  region      = "cn-north-1"
  tenant_name = "cn-north-1"
}

module "example" {
  source ="../.."

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
}
