terraform {
  required_version = ">= 0.13.0"
}

provider "aws" {
  region  = "ap-south-1" ##change it
  profile = "default"
}