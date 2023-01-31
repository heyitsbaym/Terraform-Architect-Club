terraform {
  backend "s3" {
    bucket = "test-backend"
    key    = "terraform-state/"
    region = "us-east-1"
  }
}
