resource "aws_ecr_repository" "ecr" {
  name                 = "${local.name_prefix}-ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}