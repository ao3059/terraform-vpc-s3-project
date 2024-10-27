resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
}
 
