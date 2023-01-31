variable "environment" {
  type    = string
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "ami_id" {
  type    = string
  default = "ami-0aa7d40eeae50c9a9"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}