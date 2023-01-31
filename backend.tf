terraform {
  backend "s3" {
    bucket = "test-backend-arc"
    key    = "terraform-state/"
    region = "us-west-2"
  }
}
