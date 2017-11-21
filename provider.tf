# Configure provider details with access_key and secret_key
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "javahome-devops"
    key    = "tfstate"
    region = "us-west-1"
  }
}
