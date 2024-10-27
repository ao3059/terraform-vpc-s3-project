terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket3"
    key            = "global/s3/terraform.tfstate"
    region         = "ca-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
 
