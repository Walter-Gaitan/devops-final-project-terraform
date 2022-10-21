#Random ID for unique naming
resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

locals {
  name_prefix    = "${var.naming_prefix}-${terraform.workspace}"
  s3_bucket_name = "globo-web-app-${random_integer.rand.result}"

  common_tags = {
    project      = var.project
    environment = terraform.workspace
  }
}